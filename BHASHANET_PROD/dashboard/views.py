from logging import exception
from django.shortcuts import render
from django.shortcuts import render,redirect
import pandas as pd
from BHASHANET_PROD.celery import *
from .forms import *
from dashboard.tasks import *
from django.contrib import messages
from .models import *
from urllib.parse import urlparse
from BHASHANET_PROD.logger import *
from django.core.exceptions import ValidationError
from django.db.utils import IntegrityError
import idna
from celery.result import AsyncResult
from django.db.models import Count
from .utility import *
from collections import Counter
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.core.files.storage import FileSystemStorage


# Create your views here.
@login_required
def home(request):
    return redirect('dashboard:admin_login')

# -----ADDED BY SANJAYB -------

@login_required
def idn_domain_forms(request):
    #log(request,"Calling idn_domain_forms view")
    English_Domain_Form_obj = English_Domain_Form()
    idn_dashboard_form_obj = idn_dashboard_form()
    
    if request.method == 'POST':
        form_type = request.POST.get('form_type')
        if form_type == 'IDNDOMAINFORM':
            idn_dashboard_form_obj = idn_dashboard_form(request.POST)
            try:
             # Check if form is valid or not and any params is not null
                if idn_dashboard_form_obj.is_valid():
                    # Extract User Input Domain
                    user_input_domain = idn_dashboard_form_obj.cleaned_data['IDN_domain']
                    #log(request,f"User input Domain is {user_input_domain}")
                    user_input_domain_obj = URL_dashboard.objects.filter(IDN_domain=user_input_domain).exists()

                    if not user_input_domain_obj:
                        
                        form_obj = idn_dashboard_form_obj.save(commit=False)
                        try:
                            unicode_domain = idna.decode(user_input_domain.split('/')[2])
                        except:
                            unicode_domain = user_input_domain.split('/')[2]
                        
                        unicode_domain=user_input_domain.split('/')[0] + '//' + unicode_domain 
                        
                        # Perform any additional processing or modification of the instance here
                        form_obj.IDN_domain=unicode_domain
                        form_obj.content_language = ''
                        form_obj.ssl_configuration_status=''
                        form_obj.idn_domain_running_status=''
                        initial_remark = {
                            "General": "",
                            "Domain": "",
                            "SSL": "",
                            "Content": ""
                        }
                        # Serialize the dictionary to a JSON string
                        current_remark = json.dumps(initial_remark)    
                        # Assign the updated string back to the Remark field
                        form_obj.Remark = current_remark
                        form_obj.save()
                        messages.info(request, 'Domain Record Added Successfully..! Details would be updated within 24 Hours.')
                        logs(f"IDN Domain {unicode_domain} Saved in Database ")
                        
                        ###############################################33
                        # Call Celery Function to Check and set parameters 
                        logs(f"Calling Celery Functions to Check and Update parameters")
                        update_domain_parameters.delay(unicode_domain)
                        #######################################################
                        return redirect('dashboard:dashboard2')
                    else:
                        messages.info(request,"Entered IDN domain already exists !!")
                        return redirect('dashboard:idn_domain_forms')
                else:
                    #log(request,f"Please enter valid details")
                    return render(request,'dashboard/idn_domain_forms.html', {'idn_dashboard_form_obj': idn_dashboard_form_obj,'English_Domain_Form_obj':English_Domain_Form_obj})
            except Exception as e:
                messages.error(request, f"An error occurred: {e}")
                return redirect('dashboard:idn_domain_forms')
                
        elif form_type == 'ENGDOMAINFORM':
            logs(f"POST Request is coming from English Domain Form")
            English_Domain_Form_obj = English_Domain_Form(request.POST)
            try:
                if English_Domain_Form_obj.is_valid():
                    logs(f"English_Domain_Form_obj is valid")
                    English_Domain_Form_obj.save()
                    messages.success(request, 'Domain Added Successfully ')
                    logs(f"Domain Added Successfully")
                    return redirect('dashboard:idn_domain_forms')
                else:
                    #log(request,f"Please enter valid details")
                    logs(f"English_Domain_Form_obj is not valid")
                    return render(request,'dashboard/idn_domain_forms.html', {'idn_dashboard_form_obj': idn_dashboard_form_obj,'English_Domain_Form_obj':English_Domain_Form_obj})
            except Exception as e:
                messages.error(request, f"An error occurred: {e}")
                logs(f"Exception : An error occurred:")
                return redirect('dashboard:idn_domain_forms')
    else:
        return render(request, 'dashboard/idn_domain_forms.html', {'idn_dashboard_form_obj': idn_dashboard_form_obj,'English_Domain_Form_obj':English_Domain_Form_obj})
    
#--------Added By Sanjayb-------
@login_required
def dashboard(request):
    English_Domain_total_records = English_Domain.objects.count()
    URL_dashboard_total_records = URL_dashboard.objects.count()
    URL_dashboard_total_records_governmnet = English_Domain.objects.filter(category__category_name="Government").count()
    URL_dashboard_total_records_private = English_Domain.objects.filter(category__category_name="Private").count()
    URL_dashboard_obj = URL_dashboard.objects.all().order_by('-id')

    # Count occurrences of True and False in idn_domain_running_status
    running_counts_domain = URL_dashboard_obj.values_list('idn_domain_running_status', flat=True)
    true_count_domain = sum(1 for status in running_counts_domain if status=='True')
    false_count_domain = sum(1 for status in running_counts_domain if status=='False')

    # Prepare data for the pie chart
    labels_domain = ['True', 'False']
    data_domain = [true_count_domain, false_count_domain]
    
    # Count occurrences of True and False in SSL Status
    running_counts_ssl = URL_dashboard_obj.values_list('ssl_configuration_status', flat=True)
    logs(f" Running Counts Statistics are  {running_counts_ssl}")
    true_count_ssl = sum(1 for status in running_counts_ssl if status=='True')
    false_count_ssl = sum(1 for status in running_counts_ssl if status=='False')

    # Prepare data for the pie chart
    labels_ssl = ['True', 'False']
    data_ssl = [true_count_ssl, false_count_ssl]
    
    logs(f" SSL Statistics are {data_ssl}")
    # Prepare data for Bar Chart 
    # Query to get the count of records for each language
    
    language_counts = URL_dashboard.objects.values('Language__language_name').annotate(count=Count('Language'))

    logs(f" Language data retreived from database is -- {language_counts}")
    languages = ['Hindi', 'Marathi', 'Bengali', 'Malayalam','Tamil','Telugu','Bengali','Odia','Sanskrit','Kannada','Punjabi','Gujrati','Manipuri','Assamese','Bodo','Santhali','Dogri','Kashmiri','Maithili','Nepali','Sindhi','Urdu']
    counts = []

    # Extract languages and counts from the query result
    for item in language_counts:
        # languages.append(item['Language__language_name'])
        counts.append(item['count'])
    logs(f" Languages are {languages}")
    logs(f" Languages Count are {counts}")
    

    #Prepare data for category distribution chart

    # Count the number of English domains in each category
    category_counts = English_Domain.objects.values('category__category_name').annotate(count=Count('id'))

    # Prepare data for the chart
    distribution_categories = []
    distribution_counts = []
    for category_count in category_counts:
        distribution_categories.append(category_count['category__category_name'])
        distribution_counts.append(category_count['count'])

    context = {
        'URL_dashboard_obj':URL_dashboard_obj,
        'URL_dashboard_total_records':URL_dashboard_total_records,
        'English_Domain_total_records':English_Domain_total_records,
        'URL_dashboard_total_records_governmnet':URL_dashboard_total_records_governmnet,
        'URL_dashboard_total_records_private':URL_dashboard_total_records_private,
        'labels_domain': labels_domain,
        'data_domain': data_domain,
        'labels_ssl': labels_ssl,
        'data_ssl': data_ssl,
        'languages': languages, 
        'counts': counts,
        'distribution_categories': distribution_categories,
        'distribution_counts': distribution_counts

        }
    return render(request, 'dashboard/dashboard.html', context)    

#--------Added By Sanjayb-------
@login_required
def dashboard2(request):
   
    English_Domain_total_records = English_Domain.objects.using('dashboard').count()
    URL_dashboard_total_records = URL_dashboard.objects.using('dashboard').count()
    URL_dashboard_total_records_governmnet = English_Domain.objects.using('dashboard').filter(category__category_name="Government").count()
    URL_dashboard_total_records_private = English_Domain.objects.using('dashboard').filter(category__category_name="Private").count()
    URL_dashboard_obj = URL_dashboard.objects.using('dashboard').all().order_by('-id')

    # Count occurrences of True and False in idn_domain_running_status
    running_counts_domain = URL_dashboard_obj.values_list('idn_domain_running_status', flat=True)
    true_count_domain = sum(1 for status in running_counts_domain if status=='True')
    false_count_domain = sum(1 for status in running_counts_domain if status=='False')

    # Prepare data for the pie chart
    labels_domain = ['True', 'False']
    data_domain = [true_count_domain, false_count_domain]
    
    # Count occurrences of True and False in SSL Status
    running_counts_ssl = URL_dashboard_obj.values_list('ssl_configuration_status', flat=True)
    logs(f" Running Counts Statistics are  {running_counts_ssl}")
    true_count_ssl = sum(1 for status in running_counts_ssl if status=='True')
    false_count_ssl = sum(1 for status in running_counts_ssl if status=='False')

    # Prepare data for the pie chart
    labels_ssl = ['True', 'False']
    data_ssl = [true_count_ssl, false_count_ssl]
    
    logs(f" SSL Statistics are {data_ssl}")
    # Prepare data for Bar Chart 
    # Query to get the count of records for each language
    # Define your predefined set of languages
    predefined_languages = ['Hindi', 'Marathi', 'Bengali', 'Malayalam','Tamil','Telugu','Odia','Sanskrit','Kannada','Punjabi','Gujarati','Manipuri','Assamese','Bodo','Santhali','Dogri','Kashmiri','Maithili','Nepali','Sindhi','Urdu']  # Add your predefined languages here

    language_counts = URL_dashboard.objects.using('dashboard').values('Language__language_name').annotate(count=Count('Language'))
    
    # Create a dictionary with predefined languages, initializing counts to zero
    language_dict = {language: 0 for language in predefined_languages}

    # Update the dictionary with counts retrieved from the query
    for entry in language_counts:
        language = entry['Language__language_name']
        count = entry['count']
        if language in language_dict:
            language_dict[language] = count
            
            # Separate the dictionary into two lists: one for languages and one for counts
    languages = list(language_dict.keys())
    counts = list(language_dict.values())
        
    # logs(f" Language data retreived from database is -- {language_counts}")
    # languages = ['Hindi', 'Marathi', 'Bengali', 'Malayalam','Tamil','Telugu','Bengali','Odia','Sanskrit','Kannada','Punjabi','Gujrati','Manipuri','Assamese','Bodo','Santhali','Dogri','Kashmiri','Maithili','Nepali','Sindhi','Urdu']
    # counts = []

    # Extract languages and counts from the query result
    # for item in language_counts:
    #     # languages.append(item['Language__language_name'])
    #     counts.append(item['count'])
    logs(f" Languages are {languages}")
    logs(f" Languages Count are {counts}")
    

    #Prepare data for category distribution chart

    # Count the number of English domains in each category
    category_counts = English_Domain.objects.using('dashboard').values('category__category_name').annotate(count=Count('id'))

    # Prepare data for the chart
    distribution_categories = []
    distribution_counts = []
    for category_count in category_counts:
        # distribution_categories.append(category_count['category__category_name'])
        distribution_categories = ['Government', 'Private', 'Other']
        distribution_counts.append(category_count['count'])

    ## Remark Data Chart Starts
    # Retrieve all records from URL_dashboard
    records = URL_dashboard.objects.using('dashboard').all()

    # Initialize a Counter to count occurrences of each language
    language_counter = Counter()

    # Extract and parse the Remark field
    for record in records:
        try:
            # Convert single quotes to double quotes for JSON parsing
            remark_data = json.loads(record.Remark.replace("'", '"'))
            content_language = remark_data.get("Content", "").strip()
            logs(f"Content Langauges are ---- > {content_language}")
            if content_language:
                language_counter[content_language] += 1
        except json.JSONDecodeError:
            print(f"Invalid JSON format in record ID {record.id}")

    # Prepare data for the template
    Remark_languages = list(language_counter.keys())
    Remark_counts = list(language_counter.values())
    ## Remark Data CHart Ends 
    logs(f"Records are --->{Remark_languages}{Remark_counts}")
    
    
    
    ##Content Languages Chart Starts 
    # Retrieve all records from URL_dashboard
    records = URL_dashboard.objects.using('dashboard').all()

    # Initialize a Counter to count occurrences of each language
    language_counter = Counter()

    # Extract and count the content_language field
    for record in records:
        content_language = record.content_language.strip()
        if content_language:
            language_counter[content_language] += 1

    # Prepare data for the template
    content_languages = list(language_counter.keys())
    content_counts = list(language_counter.values())

    ## Content Langauges Chart Ends 
    
    
    ##########################################################33
    # Retrieve all records
    records = URL_dashboard.objects.using('dashboard').all()

    # Extract the content language from each record
    content_languages_obj = records.values_list('content_language', flat=True)

    # Count the occurrences of each content language
    content_language_counts = Counter(content_languages_obj)

    # Total number of records
    total_records = len(content_languages_obj)

    # Calculate the proportion for each content language
    content_language_proportions = {lang: count / total_records for lang, count in content_language_counts.items()}

    # Prepare data for Chart.js
    content_language_proportions_labels = list(content_language_proportions.keys())
    content_language_proportions_data = [count * 100 for count in content_language_proportions.values()]  # Proportions in percentage
    
    ##########################################################
    

    
    context = {
        'URL_dashboard_total_records':URL_dashboard_total_records,
        'English_Domain_total_records':English_Domain_total_records,
        'URL_dashboard_total_records_governmnet':URL_dashboard_total_records_governmnet,
        'URL_dashboard_total_records_private':URL_dashboard_total_records_private,
        'labels_domain': labels_domain,
        'data_domain': data_domain,
        'labels_ssl': labels_ssl,
        'data_ssl': data_ssl,
        'languages': languages, 
        'counts': counts,
        'distribution_categories': distribution_categories,
        'distribution_counts': distribution_counts,
        'Remark_languages':Remark_languages,
        'Remark_counts':Remark_counts,
        'content_languages':content_languages,
        'content_counts':content_counts,
        'content_language_proportions_labels':content_language_proportions_labels,
        'content_language_proportions_data':content_language_proportions_data
        
        }
    return render(request, 'dashboard/dashboard2.html', context)  

#--------Added By Sanjayb-------
@login_required
def email_compose(request):
    if request.method=='POST':
        logs(f" Bulk Mail POST Method ")
        BulkEmail_Form_obj = BulkEmail_Form(request.POST, request.FILES)
        
        # logs(f"{BulkEmail_Form_obj}")
        if BulkEmail_Form_obj.is_valid() :
            logs(f"Bulk Email Form Data is valid ")
            # Check if email_attachment_file1 was provided
            
            BulkEmail_instance = BulkEmail_Form_obj.save()
            folder = 'media/email_attachment'
            if request.FILES.getlist('email_attachment'):
                for file in request.FILES.getlist('email_attachment'):
                    valid_extensions = ['png', 'jpg', 'jpeg', 'pdf', 'doc', 'docx', 'txt', 'xlsx', 'xls']
                    if file.size < 1 * 1024 * 1024 and file.name.count('.')<2 and (file.name.split('.')[1]).lower() in valid_extensions:
                        fs = FileSystemStorage(location=folder)
                        filename = fs.save(file.name, file)
                        BulkEmailAttachments.objects.create(email_attachment=f'email_attachment/{filename}', bulk_email=BulkEmail_instance)
                    else:
                        BulkEmail.objects.get(id=BulkEmail_instance.id).delete()
                        messages.error(request, f"Invalid attachment file named {file.name}")
                        context = {
                        'BulkEmail_Form_obj':BulkEmail_Form_obj
                        }
                        return render(request, 'dashboard/email_compose.html',context)
            # Process Email Sending Function
            logs(f" Passing id in celery Function as {BulkEmail_instance.id}")
            Send_Bulk_Email.delay(BulkEmail_instance.id)
            
            messages.success(request,"Sending Email Process Initiated")
            logs(f" Sending Email Process Completed Successfully")
            return redirect('dashboard:sent_email_view')
        else:
            logs(f"Bulk Email Form Data is not valid ")
            logs(f"{BulkEmail_Form_obj.errors}")
            messages.error(request, "Please Fill Correct Details")
            context = {
            'BulkEmail_Form_obj':BulkEmail_Form_obj
            }
            return render(request, 'dashboard/email_compose.html',context)
    else:
        logs(f"Bulk Mail GET Method ")
        BulkEmail_Form_obj = BulkEmail_Form()
        context = {
            'BulkEmail_Form_obj':BulkEmail_Form_obj
            }
        return render(request, 'dashboard/email_compose.html',context)
        
#--------Added By Sanjayb-------
@login_required  
def sent_email_view(request):
    logs(f"Calling sent_email_view view")
    BulkEmail_obj = BulkEmail.objects.all()
    return render(request,'dashboard/sent_email_view.html',{'BulkEmail_obj':BulkEmail_obj})
   
#--------Added By Sanjayb-------
@login_required
def sent_email_view_detail(request,id):
    logs(f"Calling sent_email_view_detail view")
    BulkEmail_obj = BulkEmail.objects.get(id=id)
    return render(request,'dashboard/sent_email_view_detail.html',{"BulkEmail_obj":BulkEmail_obj})

#--------Added By Sanjayb-------

@login_required
def refresh_domain_parameters(request,id):
    English_Domain_total_records = English_Domain.objects.count()
    URL_dashboard_total_records = URL_dashboard.objects.count()
    URL_dashboard_total_records_governmnet = English_Domain.objects.filter(category__category_name="Government").count()
    URL_dashboard_total_records_private = English_Domain.objects.filter(category__category_name="Private").count()
    URL_dashboard_obj = URL_dashboard.objects.all()

    context = {
        'URL_dashboard_obj':URL_dashboard_obj,
        'URL_dashboard_total_records':URL_dashboard_total_records,
        'English_Domain_total_records':English_Domain_total_records,
        'URL_dashboard_total_records_governmnet':URL_dashboard_total_records_governmnet,
        'URL_dashboard_total_records_private':URL_dashboard_total_records_private
        }
    URL_dashboard_obj = URL_dashboard.objects.get(id=id)
    unicode_domain = URL_dashboard_obj.IDN_domain
    logs(f" Calling Refresh Function For {unicode_domain}")
    update_domain_parameters.delay(unicode_domain)
    messages.success(request,"Parameters are being updated. Please wait and refresh after 60 seconds.")
    return redirect('dashboard:dashboard2')


#-----Added By Sanjay Bhargava------
@login_required
def edit_idn_domain_forms(request,id):
    if request.method== 'POST':
        logs("In views.py File -- > In POST Request ")
        URL_dashboard_instance = URL_dashboard.objects.get(id=id)
        logs(f"In views.py file -- > Fetched Object is {URL_dashboard_instance}")
        idn_dashboard_form_obj = idn_dashboard_form(request.POST,instance=URL_dashboard_instance)
        if URL_dashboard_instance.IDN_domain==request.POST.get('IDN_domain'):
            logs(f"Inside has changed for field=== URL_dashboard_instance.IDN_domain {URL_dashboard_instance.IDN_domain},{request.POST.get('IDN_domain')}")
            idn_dashboard_form_obj = idn_dashboard_form(request.POST,instance=URL_dashboard_instance,is_new=False)
        else:
            idn_dashboard_form_obj = idn_dashboard_form(request.POST,instance=URL_dashboard_instance,is_new=True)

        
        if idn_dashboard_form_obj.has_changed():
            logs(f"In views.py file -- > User has changed details {idn_dashboard_form_obj.has_changed()}")
            if idn_dashboard_form_obj.is_valid():
                logs("Changes has been requested by user")
                user_input_domain = idn_dashboard_form_obj.cleaned_data['IDN_domain']
                try:
                    unicode_domain = idna.decode(user_input_domain.split('/')[2])
                except:
                    unicode_domain = user_input_domain.split('/')[2]       
                unicode_domain=user_input_domain.split('/')[0] + '//' + unicode_domain 
                #log(request,f"Updated User input Domain is {user_input_domain}")
                temp_idn_dashboard_form_obj = idn_dashboard_form_obj.save(commit=False)
                temp_idn_dashboard_form_obj.IDN_domain = unicode_domain
                temp_idn_dashboard_form_obj.content_language = ''
                temp_idn_dashboard_form_obj.ssl_configuration_status=''
                temp_idn_dashboard_form_obj.idn_domain_running_status=''
                initial_remark = {
                    "General": "",
                    "Domain": "",
                    "SSL": "",
                    "Content": ""
                }
                # Serialize the dictionary to a JSON string
                current_remark = json.dumps(initial_remark)    
                # Assign the updated string back to the Remark field
                temp_idn_dashboard_form_obj.Remark = current_remark
                temp_idn_dashboard_form_obj.save()
                messages.info(request,"Domain Updated Successfully. Parameters would be updated shortly.")
                ###############################################33
                # Call Celery Function to Check and set parameters 
                logs(f"Calling Celery Functions to Check and Update parameters")
                update_domain_parameters.delay(unicode_domain)
                #######################################################
                return redirect('dashboard:dashboard2')
            else:
                logs("Please provide correct details.")
                messages.error(request,"Please provide correct details.")
                return render(request,'dashboard/edit_idn_domain_forms.html', {'idn_dashboard_form_obj': idn_dashboard_form_obj})
        else:
            logs("No changes Detected")
            messages.info(request,"No changes Detected.")
            # return render(request,'dashboard/edit_idn_domain_forms.html', {'idn_dashboard_form_obj': idn_dashboard_form_obj})
            return render(request,'dashboard/edit_idn_domain_forms.html', {'idn_dashboard_form_obj': idn_dashboard_form_obj})
    else:
        logs("In views.py File -- > In else Request ")
        URL_dashboard_instance = URL_dashboard.objects.get(id=id)
        idn_dashboard_form_obj = idn_dashboard_form(instance=URL_dashboard_instance)
        logs(f"in views.py file -- Updating Details for id {id}")
        return render(request,'dashboard/edit_idn_domain_forms.html', {'idn_dashboard_form_obj': idn_dashboard_form_obj})
        
        
        #-----Added By Sanjay Bhargava------

#-----Added By Sanjay Bhargava------

@login_required   
def show_logs(request):
    file_path = os.path.join(settings.BASE_DIR, 'message.logs')
    file_content = []

    # Open the file and read its content line by line
   # Open the file and read its content line by line
    with open(file_path, 'r', encoding='utf-8') as file:
        file_content = file.readlines()

    # Reverse the order of lines
    file_content.reverse()

    # Render the template with the file content
    return render(request, 'dashboard/show_logs.html', {'file_content': file_content}) 

#-----Added By Sanjay Bhargava------
@login_required 
def clear_logs(request):
    file_path = os.path.join(settings.BASE_DIR, 'message.logs')
    file_content = []
    
    # Open the file in write mode to clear its content
    with open(file_path, 'w', encoding='utf-8') as file:
        file.write('')  # Writing an empty string clears the file content
    
    # Redirect back to the page displaying the file content
    return redirect('dashboard:show_logs')

#-----Added By Sanjay Bhargava------

@login_required 
def show_logs_last(request):
    file_path = os.path.join(settings.BASE_DIR, 'message.logs')
    file_content = []

     # Open the file and read its content in reverse order
    with open(file_path, 'r', encoding='utf-8') as file:
        # Read the last 50 lines
        lines = file.readlines()[-50:]
        # Reverse the order of lines
        lines.reverse()
        for line in lines:
            file_content.append(line.strip())

    # Render the template with the last 50 lines of the file content
    return render(request, 'dashboard/show_logs.html', {'file_content': file_content}) 

#-----Added By Sanjay Bhargava------
@login_required 
def upload_excel(request):
    if request.method == 'POST':
        logs(f" upload_excel file POST method calling")
        ExcelUploadForm_obj = ExcelUploadForm(request.POST, request.FILES)
        logs(f" {ExcelUploadForm_obj}")
        if ExcelUploadForm_obj.is_valid():
            user_uploaded_excel_file = request.FILES['excel_file']
            df = pd.read_excel(user_uploaded_excel_file)
            logs(f" Excel File Readed and converted to dataframe successfully {df}")
            # print("data",df)
            ###########################################################################
            logs(f"Records Values Are :")
            invalid_data=[]
            try:
                for index, row in df.iterrows():
                    logs(f"{row['Category']}--{row['Department']}--{row['English_Domain']}--{row['Language']}--{row['IDN_Domain']}")
                    
                    # Check For Null Value Empty Value 
                    fields_to_check = [row['Category'], row['Department'], row['English_Domain'], row['Language'], row['IDN_Domain']]
                    logs(f" Fields to check are : {fields_to_check}")
                
                    if all(pd.notna(field) and field != "" for field in fields_to_check): 
                        logs(f"valid -- > Fields are : {fields_to_check}")  
                        logs(f" Valid Record ")    
                        # Cleaning User Values 
                        try:
                            user_category=row['Category'].strip()
                            user_department=row['Department'].strip()
                            user_english_domain_name=row['English_Domain'].strip()
                            user_idn_domain_name = row['IDN_Domain'].strip()
                            user_language = row['Language'].strip()
                        except Exception as e:
                            logs(f"views.py striping all fields values failed -- > {e},{index}")
                            invalid_data.append(row) 
                            continue
                        #--- English Record Insertion Procedure ----
                        try:
                            category_obj = category_list.objects.get(category_name=user_category)
                            logs(f" category fetched is -- {category_obj}")
                        except Exception as e:
                            logs(f"views.py category not found -- > {e},{index}") 
                            invalid_data.append(row)
                            continue
                    
                        #Check if record already exist or not 
                        # Check english domain is valid or not
                        if not validate_english_domain_name(user_english_domain_name):
                            print("English domain is not valid : ", user_english_domain_name)
                            invalid_data.append(row)
                            continue
                        
                        
                        if "://www." in user_english_domain_name:
                            parsed_english_domain = user_english_domain_name.split('/')[0] + "//" + user_english_domain_name.split('/')[2].replace("www.", "")
                        else:
                            parsed_english_domain = user_english_domain_name.split('/')[0]+ "//www." + user_english_domain_name.split('/')[2] 

                        if English_Domain.objects.filter(domain_name=user_english_domain_name).exists() or English_Domain.objects.filter(domain_name=parsed_english_domain).exists():
                            logs(f" English domain {user_english_domain_name} record already exists")
                        else:
                            English_Domain.objects.create(
                                department_name=user_department,
                                domain_name=user_english_domain_name,
                                category=category_obj,
                                )
                        #--- URL Dashboard  Record Insertion Procedure ----
                        # check IDN domain is valid 
                        if not validate_IDN_domain_name(user_idn_domain_name):
                            print("IDN domain is not valid : ", user_idn_domain_name)
                            invalid_data.append(row)
                            continue
                        
                        ##Check if user input idn domain is in ascii 
                        try:
                            converted_unicode_domain = idna.decode(user_idn_domain_name.split('/')[2])
                            logs(f"Converted Unicode domain from punycode is -- {converted_unicode_domain}")
                        except:
                            converted_unicode_domain = user_idn_domain_name.split('/')[2]
                            logs(f"User has entered Unicode domain  -- {converted_unicode_domain}")

                        converted_unicode_domain=user_idn_domain_name.split('/')[0] + '//' + converted_unicode_domain  
                        logs(f"Final Converted Unicode Domain is {converted_unicode_domain}")

                        if "://www." in converted_unicode_domain:
                            parsed_idn_domain = converted_unicode_domain.split('/')[0] + "//" + converted_unicode_domain.split('/')[2].replace("www.", "")
                        else:
                            parsed_idn_domain = converted_unicode_domain.split('/')[0]+ "//www." + converted_unicode_domain.split('/')[2] 
                        logs(f" Parsed Domain is -- {parsed_idn_domain} and converted unicode domain is {converted_unicode_domain}")

                        if URL_dashboard.objects.filter(IDN_domain=converted_unicode_domain).exists() or URL_dashboard.objects.filter(IDN_domain=parsed_idn_domain).exists():
                            logs(f" IDN domain {converted_unicode_domain} record already exists")
                        else:
                            english_domain_obj = English_Domain.objects.get(domain_name=user_english_domain_name)
                            logs(f" English Domain fetched is -- {english_domain_obj}")
                            language_obj = language_list.objects.get(language_name=user_language)
                            logs(f" Language fetched is -- {language_obj}")
                            initial_remark = {
                                    "General": "",
                                    "Domain": "",
                                    "SSL": "",
                                    "Content": ""
                                }
                                # Serialize the dictionary to a JSON string
                            current_remark = json.dumps(initial_remark) 
                            URL_dashboard.objects.create(
                                English_domain = english_domain_obj,
                                Language = language_obj,
                                IDN_domain = converted_unicode_domain,
                                ssl_configuration_status='',
                                idn_domain_running_status='',
                                content_language='',
                                Remark=current_remark
                            )
                            #Send to celery For Updating Parameter #
                            update_domain_parameters.delay(converted_unicode_domain)
                    else:
                        logs(f" Invalid Record for {index}")
                        invalid_data.append(row)
            except Exception as e:
                logs(f"views.py -- > {e}")

            invalid_data_df = pd.DataFrame(invalid_data)
            print(invalid_data_df)
            invalid_data_df.to_excel("invalid_data.xlsx")

            #########################################################################################################
            messages.success(request,"File Uploaded Successfully")
            return render(request,'dashboard/upload_excel_file.html',{'ExcelUploadForm_obj' : ExcelUploadForm_obj})
        else:
            messages.error(request,"Invalid File")
            logs(f"views.py file---> {ExcelUploadForm_obj.errors}")
            return render(request,'dashboard/upload_excel_file.html',{'ExcelUploadForm_obj' : ExcelUploadForm_obj})
            
    else:
        logs(f" upload_excel file GET method calling")
        ExcelUploadForm_obj = ExcelUploadForm()
        return render(request,'dashboard/upload_excel_file.html',{'ExcelUploadForm_obj' : ExcelUploadForm_obj})
        
#-----Added By Sanjay Bhargava------
@login_required 
def idn_domain_list(request):
    URL_dashboard_obj = URL_dashboard.objects.all().order_by('-id')
    return render(request,'dashboard/idn_domain_list.html',{'URL_dashboard_obj':URL_dashboard_obj})


#-----Added By Sanjay Bhargava------
@login_required 
def english_domain_list(request):
    English_Domain_obj = English_Domain.objects.all().order_by('-id')
    return render(request,'dashboard/english_domain_list.html',{'English_Domain_obj':English_Domain_obj})

#-----Added By Sanjay Bhargava------

def admin_login(request):
    print("loging get called")
    logs("admin_login view called ")
    if request.user.is_authenticated and request.user.is_staff:
        logs("Admin is already login")
        return redirect('dashboard:dashboard2')
    if request.method == 'POST':
        logs("POST Method Called")
        form = AdminLoginForm(request.POST)
        if form.is_valid():
            logs("Form is Valid ")
            username = form.cleaned_data['username']
            password = form.cleaned_data['password']
            user = authenticate(request, username=username, password=password)
            if user is not None and user.is_staff:
                logs("user is not None and user is_staff")
                login(request, user)
                return redirect('dashboard:dashboard2')  # Change this to your admin dashboard URL
            else:
                logs("user is  None and user is not staff")
                messages.error(request, 'Invalid username or password.')
                return render(request,'dashboard/admin_login.html', {'form': form})
        else:
            logs("Form is Not Valid ")
            messages.error(request, 'Invalid username or password.')
            return render(request,'dashboard/admin_login.html', {'form': form})
    else:
        logs("GET Method Called")
        form = AdminLoginForm()
        print("page will render")
    return render(request,'dashboard/admin_login.html', {'form': form})

#-----Added By Sanjay Bhargava------
@login_required 
def admin_logout(request):
    if request.user.is_authenticated and request.user.is_staff:
        logout(request)
        return redirect('dashboard:admin_login')  # Redirect to the login page after logging out
    else:
        return redirect('dashboard:admin_login')
        

#-------- Added By Sanjay Bhargava--------

def update_all_domains(request):
    IDN_domain_list = URL_dashboard.objects.values_list('IDN_domain', flat=True)
    logs(f"IDN List is -- {IDN_domain_list}")
    # Updating Parameters for All IDN Doamin Names
    for domain in IDN_domain_list:
        logs(f"Updating parameters for -- {domain}")
        update_domain_parameters.delay(domain)
    pass
