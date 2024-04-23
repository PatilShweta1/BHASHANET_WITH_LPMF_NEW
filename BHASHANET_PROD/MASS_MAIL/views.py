from django.shortcuts import render
from django.contrib.auth.models import User
from .forms import SendEmail
from django.template.loader import get_template
from django.core.mail import EmailMessage
from django.conf import settings
from .models import EmailAttachment, EmailSend
from django.contrib import messages
import os
import time
from django.contrib.auth.decorators import login_required

# Create your views here.
@login_required(login_url="login_view")
def mass_mail(request):
    form = SendEmail()
    if request.method == "POST" :
        form = SendEmail(request.POST, request.FILES)
        if form.is_valid():
            try:
                instance = form.save()
                instance_id = instance.id
                files = request.FILES.getlist('email_attachment')
                for file in files:
                    print("file size ", file.size/1024)
                    if round(file.size/1024) > 1024:
                        messages.error(request, f"Invalid File Size for file {file.name}", extra_tags="danger")
                        return render(request, 'mass_mail.html', {'form': form})  
                    EmailAttachment.objects.create(email_attachment=file, email_send=EmailSend.objects.get(id=instance_id))

                msg = get_template("email_template.html").render({'msg_body': request.POST.get('email_body')})
                mail_subject = request.POST.get('email_subject')
                print("attachment ",request.FILES.getlist('email_attachment'))

                users = User.objects.filter(is_active=True)
                print("users ",users)
                user_list = []
                for user in users:
                    if user.username.__contains__('@'):
                        print(user.username)
                        user_list.append(user.username)
                print("users ",user_list)
               
                count = 1
                # for user in user_list:
                
                for user in user_list:
                    # print("i ",i)
                    
                    if count % 5 == 0:
                        print("in sleep")
                        time.sleep(5)
                        # print("i ", i)
                        try:
                            mail = EmailMessage(mail_subject,msg,settings.SERVER_EMAIL, [user])
                            # mail = EmailMessage(mail_subject,msg,settings.SERVER_EMAIL, ['tanvip@cdac.in'])
                            mail.content_subtype = "html"
                            for file in request.FILES.getlist('email_attachment'):
                                name = file.name
                                if " " in file.name:
                                    name = file.name.replace(" ", "_")
                                mail_attachment = os.path.join(settings.MEDIA_ROOT, f"mass_mail/email_attachment/{name}")
                                mail.attach_file(mail_attachment)
                            status = mail.send(fail_silently=False)
                        except Exception as e:
                            print("exception while sending email ", e)
                            messages.error(request, "Invalid Details", extra_tags="danger")
                            return render(request, 'mass_mail.html', {'form': form})
                    else:
                        try:
                            # print("i ", i)
                            mail = EmailMessage(mail_subject,msg,settings.SERVER_EMAIL, [user])
                            # mail = EmailMessage(mail_subject,msg,settings.SERVER_EMAIL, ['tanvip@cdac.in'])
                            mail.content_subtype = "html"
                            for file in request.FILES.getlist('email_attachment'):
                                name = file.name
                                if " " in file.name:
                                    name = file.name.replace(" ", "_")
                                mail_attachment = os.path.join(settings.MEDIA_ROOT, f"mass_mail/email_attachment/{name}")
                                mail.attach_file(mail_attachment)
                            status = mail.send(fail_silently=False)
                        except Exception as e:
                            print("exception while sending email ", e)
                            messages.error(request, "Invalid Details", extra_tags="danger")
                            return render(request, 'mass_mail.html', {'form': form})
                    count += 1
                    print("count ", count)
                messages.success(request, "Mail sent successfully", extra_tags="success")
            except Exception as e:
                messages.error(request, "Invalid Details", extra_tags="danger")
                return render(request, 'mass_mail.html', {'form': form})
        else:
             messages.error(request, "Invalid Details", extra_tags="danger")
             return render(request, 'mass_mail.html', {'form': form})
        
    return render(request, 'mass_mail.html', {'form': form})

# Create your views here.
