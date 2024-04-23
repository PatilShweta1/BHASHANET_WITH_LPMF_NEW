from django.shortcuts import render, redirect
from .models import *
from django.contrib import messages
from django.core.mail import send_mail
from .forms import *
from django.conf import settings
from django.urls import reverse
from .custom_captcha import captcha_img_generator, random_captcha_generator
import environ
from django.contrib.auth.hashers import make_password
from django.contrib.auth import login, authenticate, logout
from json2html import *
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from .token import account_activation_token
from django.utils.encoding import force_bytes, force_str
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect
import json
env = environ.Env()
environ.Env.read_env()



##----------   login view -----------
def login_view(request):
    if request.user.is_authenticated:
        logout(request)
    if request.method == 'POST':
        form = LoginForm(request.POST.copy())
        if form.is_valid():
            username = form.cleaned_data['username']
            password = form.cleaned_data['password']
        
            print("username= ", username + " password= " + password)
            
            try:
                # check user status is active or not
                if User.objects.filter(username=username, is_active=False):
                    print("User is not active")
                    messages.info(request, "User is not Active, Please Activate or Register again", extra_tags="danger")
                else:
                    # authenticate username and password 
                    user = authenticate(username=username, password=password)
                    if user is not None:
                        login(request, user)
                        
                        # User authenticated successful
                        try:
                            user_role_obj = UserRoleMapping.objects.get(User_Id=user)     
                            print("user role obj", user_role_obj)
                           
                            if user_role_obj.Role_Id.Role_Name == 'nixi_admin':
                                print("Nixi admin")
                                return redirect('home')
                            elif user_role_obj.Role_Id.Role_Name == 'ficci_admin':
                                print("Ficci admin")
                                return redirect('home')
                            elif user_role_obj.Role_Id.Role_Name == 'main_admin':
                                print("main admin")
                                return redirect('home')
                            else:
                                return redirect("home")
                        except:
                            return redirect("home")
                    else:
                        messages.error(request, 'Incorrect login credentials', extra_tags="danger")
            except:
                messages.error(request, "Something Went Wrong", extra_tags="danger")  
        else:
            print("form is invalid")
            
        captcha_value = random_captcha_generator()
        captcha_img_generator(captcha_value)
        form.data['captcha_input'] = ''
        form.data['captcha_hidden'] = make_password(captcha_value)
    else:
        form = LoginForm()
        captcha_value = random_captcha_generator()
        captcha_img_generator(captcha_value)
        print("captcha value ", captcha_value)
        form.fields['captcha_hidden'].initial = make_password(captcha_value)
        
        
    return render(request, 'core/user/user_login.html', {"form": form})


## ------ user  registration view -------
def register_view(request):
    if request.user.is_authenticated:
        logout(request)
    
    if request.method == 'POST':
        form = RegistrationForm(request.POST.copy())
        
        if form.is_valid():
            email = request.POST.get("email")
            password = request.POST.get("password1")
            
            print("email : ", email, " password : ", password)
            
            if not User.objects.filter(username=email).exists():
                user = User.objects.create(email=email, username=email)       
                user.set_password(password)     
                user.is_active = False
                user.save()
                
            else:
                user = User.objects.get(username=email)
                print("duplicate_user ", user.is_active)

                if not user.is_active:
                    user.set_password(password) 
                    user.save()
                else:
                    messages.error(request, 'Email address already exists', extra_tags="danger")
                    captcha_value = random_captcha_generator()
                    captcha_img_generator(captcha_value)
                    print("captcha value ", captcha_value)
                    form.fields['captcha_hidden'].initial = make_password(captcha_value)
                
                    return render(request, "core/user/user_register.html", {'form': form})

            
            
            if not user == None:
                domain = request.get_host()
                uid = urlsafe_base64_encode(force_bytes(user.pk))
                token = account_activation_token.make_token(user)
                link = reverse('user_activate', kwargs={"uid64": uid, "token": token})
                activate_link = "http://" + domain + link
                print("activate_link ", activate_link)
                # messages.add_message(request, messages.SUCCESS, 'Regitrastion Successful')


                ## send activation mail to user
                try:
                    send_mail(
                    subject="Registration successful",
                    message="",
                    from_email=settings.DEFAULT_FROM_EMAIL,
                    recipient_list=[email],
                    fail_silently=False,
                    html_message="Your registration is successful. To activate your accout please click on activation link:  "+'</br><a href={0}>{0}</a>'.format(activate_link)
                )
                    print("mail sent")
                
                except:
                    print("mail not sent")
                    messages.add_message(request, messages.ERROR, 'Error while sending activation link', extra_tags="danger")  # print("send mail ",send_mail('regitrastion successful', 'welcome to ict-ipr family'+activate_link, 'tanvip@cdac.in',['tanvipatil1413@gmail.com']))  #     #return redirect("ICT_IPR_App:Home")
                messages.add_message(request, messages.SUCCESS, 'Registration Successful', extra_tags="success")
        else:
            print("Unsuccessful registration. Invalid information.")
            # messages.error(request, "Unsuccessful Registration. Invalid Information.", extra_tags='danger')
        captcha_value = random_captcha_generator()
        captcha_img_generator(captcha_value)
        
        
        # form1 = LoginForm(request.POST.copy())
        form.data['captcha_input'] = ''
        form.data['captcha_hidden'] = make_password(captcha_value)
          
        return render(request, template_name="core/user/user_register.html", context={"form": form})
        
    else:
        form = RegistrationForm()
        captcha_value = random_captcha_generator()
        captcha_img_generator(captcha_value)
        print("captcha value ", captcha_value)
        form.fields['captcha_hidden'].initial = make_password(captcha_value)
    
    return render(request, "core/user/user_register.html", {'form': form})



## ----- user activate view ------
def user_activate_view(request, uid64, token):
    uid = force_str(urlsafe_base64_decode(uid64))
    user = User.objects.get(pk=uid)
    joined_date = user.date_joined
    expiry_date = joined_date + timedelta(hours=24)
    
    print("expiry date ", expiry_date)
    print("date joined ", datetime.now(timezone.utc))
    
    if (expiry_date > datetime.now(timezone.utc)):
        if user is not None and account_activation_token.check_token(user, token):
            user.is_active = True
            user.save()
            messages.add_message(request, messages.SUCCESS, 'User activation successful', extra_tags="success")
        else:
            if user.is_active == True:
               messages.add_message(request, messages.ERROR, "User already activated please login", extra_tags="danger")
            else:
               form = RegistrationForm()
               messages.add_message(request, messages.ERROR, "User activattion failed please re-register yourself", extra_tags="danger")
               return render(request, template_name="core/user/user_register.html", context={"register_form": form})
        return redirect('login_view')
    else:
        messages.add_message(request, messages.ERROR, "Activation link expired please re-register yourself", extra_tags="danger")
        return render(request, template_name='core/user/forgot_password_token_page.html')


## ------- Loguot view --------
@login_required()
def logout_view(request):
    
    logout(request)
    
    messages.success(request, "You are successfully logged Out", extra_tags="success")
    return redirect("login_view")


#### ------- Chnage password view ------- 
@login_required()
def change_password_view(request):
    print("in change password view")
    form = ChangePasswordUserForm()
    try:
        user = User.objects.get(username=request.user)
        print("user ", user)
        if request.method == 'POST':
            form = ChangePasswordUserForm(request.POST)
            if form.is_valid():
                old_password = form.cleaned_data['old_password']
                new_password = form.cleaned_data['new_password']
                
                print("old : ", old_password , " new : ", new_password)
                if user.check_password(old_password):
                    user.set_password(new_password)
                    user.save()
                    messages.success(request, 'Password changed successfully', extra_tags='success')
                else:
                    messages.error(request, "Incorrect Old Password", extra_tags='danger')                
            else:
                print("invalid form")
    except:
        messages.error(request, "User Not Found", extra_tags='danger')

    return render(request, 'core/user/change_password.html', {'form':form})


### --------- forgot pasword --------
def forgot_password_view(request):
    print("in forgot password view")
    # check user is authenticated or NOT
    if request.user.is_authenticated:
        return redirect("admin_blog_datatable")
    # form = ForgotPasswordForm()

    if request.method == 'POST':
        form = ForgotPasswordForm(request.POST.copy())
        if form.is_valid():
            email = form.cleaned_data['email']
            print("Email ", email)
            user = User.objects.filter(email=email)

            if user:
                print("User email : ", user[0].pk)

                # check user is active
                if not user[0].is_active:
                    captcha_value = random_captcha_generator()
                    captcha_img_generator(captcha_value)
                    form.data['captcha_input'] = ''
                    form.data['captcha_hidden'] = make_password(captcha_value)
                    messages.error(request, "User is not active", extra_tags="danger")
                    return render(request, 'core/user/forgot_password.html', {'form': form})

                # generate token
                domain = request.get_host()
                uid = urlsafe_base64_encode(force_bytes(user[0].pk))
                token = account_activation_token.make_token(user[0])
                link = reverse('password_creation', kwargs={"uid": uid, "token": token})
                activate_link = "http://" + domain + link
                print(domain)
                print("activate_link ", activate_link)

                # add token in database 
                try:
                    forgot_password_data = CustomForgotPassword.objects.filter(email=user[0])
                    if forgot_password_data:
                        print("user data already exists")
                        print(forgot_password_data[0].generation_time, forgot_password_data[0].counter)
                        
                        prev_counter = forgot_password_data[0].counter
                        generated_date = forgot_password_data[0].generation_time.date()
                        current_date = datetime.now().date()
                        
                        if generated_date == current_date:
                            print("Same day request")
                            if prev_counter < 10:
                                forgot_password_data[0].counter = prev_counter + 1
                            else:
                                captcha_value = random_captcha_generator()
                                captcha_img_generator(captcha_value)
                                form.data['captcha_input'] = ''
                                form.data['captcha_hidden'] = make_password(captcha_value)
        
                                messages.error(request, "Forgot password request daily limit exceeded, please try after some time.(max limit 10)", extra_tags="danger")
                                return render(request, 'core/user/forgot_password.html', {'form': form})
                        else:
                            print("Date is different from today")
                            forgot_password_data[0].counter = 1

                        forgot_password_data[0].forgot_password_token = token
                        forgot_password_data[0].generation_time = datetime.now(timezone.utc)
                        forgot_password_data[0].save()
                    else:
                        data = CustomForgotPassword(email=user[0], forgot_password_token=token, generation_time=datetime.now(timezone.utc), counter=1)
                        print(data)
                        data.save()
                except:
                    print("Error in data insert in custom_forgot_password model(table)")
                    captcha_value = random_captcha_generator()
                    captcha_img_generator(captcha_value)
                    form.data['captcha_input'] = ''
                    form.data['captcha_hidden'] = make_password(captcha_value)
                    
                    messages.error(request, "Something Went Wrong", extra_tags="danger")
                    return render(request, 'core/user/forgot_password.html', {'form': form}) 

                # send email
                
                try:
                    send_mail(
                    subject="Forgot Password",
                    message="",
                    from_email=settings.DEFAULT_FROM_EMAIL,
                    recipient_list=[email],
                    fail_silently=False,
                    html_message="<h4>Click <a href={0}>here</a> to reset your password. Link is valid for 2 hours.</h4>".format(activate_link)
                )
                    print("mail sent")
                    messages.error(request, "Email sent to {}".format(email), extra_tags="success")

                except:
                    print("Error in email send")
                    messages.error(request, "Email not send", extra_tags="danger")  # return render(request, 'core/user/forgot_password.html', {'form': form})
            else:
                print("Email not registered")
                messages.error(request, "User does not exists", extra_tags="danger")  # return render(request, 'core/user/forgot_password.html', {'form': form})
        else:
            print("Form invalid")  # messages.error(request, "Please correct error")    # return render(request, 'core/user/forgot_password.html', {'form': form})
            # messages.error(request, "Something Went Wrong")  
            
        captcha_value = random_captcha_generator()
        captcha_img_generator(captcha_value)
        form.data['captcha_input'] = ''
        form.data['captcha_hidden'] = make_password(captcha_value)
        return render(request, 'core/user/forgot_password.html', {'form': form}) 
    else:
        form = ForgotPasswordForm()
        
    captcha_value = random_captcha_generator()
    captcha_img_generator(captcha_value)
    print("captcha value ", captcha_value)
    form.fields['captcha_hidden'].initial = make_password(captcha_value)
    
    return render(request, 'core/user/forgot_password.html', {'form': form}) 


# Used for re creating new password after forgoting the password
def password_creation_view(request, uid, token):
    if request.user.is_authenticated:
        return redirect("admin_blog_datatable")
    form = PasswordCreationForm()
    print(uid, token)
    # print(urlsafe_base64_decode(uid).decode())
    try:
        id = urlsafe_base64_decode(uid).decode()
        user = User.objects.filter(id=id)

        if user:
            if not user[0].is_active:
                # messages.error(request, "User is not active", extra_tags="danger")
                return render(request, 'core/user/forgot_password_token_page.html', {'message': "User account is not activated yet, please activate or register again", "link": "register_view"})
            token_data = CustomForgotPassword.objects.filter(forgot_password_token=token)
            print("Token ", token_data)

            # check if token is used already
            # token = token_data[0].forgot_password_token
            # if token == 'none':
            #     return render(request, 'core/user/forgot_password_token_page.html', {'message': "Password already changed"})

            if token_data:
                token_generation_time = token_data[0].generation_time
                current_time = datetime.now(timezone.utc)
                print(token_generation_time)
                print(current_time)
                print(token_generation_time.tzinfo)
                time_threshold = current_time - timedelta(hours=2)  # change current time is 2 hour before
                print(time_threshold)

                # compare generation time is not before 2 hours 
                if token_generation_time < time_threshold:
                    print("Token expire")
                    # messages.info(request, "Token expired")
                    # token expired then redirect to error page
                    return render(request, 'core/user/forgot_password_token_page.html', {'message': "Activation link Expired!", "link": "forgot_password"})
                else:
                    # if token is not expired yet 
                    print("Token not expired yet")
                    # change password
                    if request.method == 'POST':
                        form = PasswordCreationForm(request.POST)
                        if form.is_valid():
                            password = form.cleaned_data['password']
                            confirm_password = form.cleaned_data['confirm_password']
                            print("New Password : ", password, "\n Confirm Password: ", confirm_password)
                            if password != confirm_password:
                                print("Passwords not matched")
                                messages.error(request, "Confirm Password must be same as New Password", extra_tags="danger")
                                return render(request, "core/user/password_creation.html", {'form': form})

                            # passwords are same
                            user[0].password = make_password(password)
                            user[0].save()
                            # set token to None
                            token_data[0].forgot_password_token = "none"
                            token_data[0].save()
                            logout(request)
                            return render(request, 'core/user/password_change_success_page.html', {'message': "Password Reset Successful"})
                        else:
                            # messages.error(request, "Please correct error")
                            return render(request, "core/user/password_creation.html", {'form': form})

                    return render(request, "core/user/password_creation.html", {'form': form})


            else:
                print("Token is not exists")
                return render(request, 'core/user/forgot_password_token_page.html', {'message': "Activation link Expired!", "link": 'forgot_password'})
        else:
            print("User does not exists")
            return render(request, 'core/user/forgot_password_token_page.html', {'message': "User not exists", "link": 'login_view'})


    except User.DoesNotExist:
        print("User does not exists")
    except UnicodeDecodeError:
        print("uid error")
        return render(request, 'core/user/forgot_password_token_page.html', {'message': "Invalid URL", "link": 'forgot_password'})
    except:
        print("Error in id decode")
        return render(request, 'core/user/forgot_password_token_page.html', {'message': "Something went wrong", "link": 'forgot_password'})

    return render(request, 'core/user/password_creation.html', {'form': form})



# Used for user profile creation
@login_required()
def user_profile_view(request):
    print("User profile view")
    
    user_profile_obj = UserProfile.objects.filter(UserProfile_user=request.user)
    if user_profile_obj:
        form = UserProfileForm(instance=user_profile_obj[0])
    else:
        form = UserProfileForm()
    if request.method == 'POST':
        if user_profile_obj:
            form = UserProfileForm(request.POST, request.FILES, instance=user_profile_obj[0])
        else:
            form = UserProfileForm(request.POST, request.FILES)
        
        if form.is_valid():
            user_obj = request.user
            form.instance.UserProfile_user = user_obj
            form.save()
            messages.success(request, "Profile Updated Successfully", extra_tags="success")
        else:
            print("Invalid User profile", form.errors)
        
    return render(request, 'core/user/user_profile.html', {'form' : form}) 
