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
from .utility import generate_otp_for_user_registration,validate_otp_for_user_registration
from CORE.tasks import User_Registration_With_OTP



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
                                return redirect('dashboard:dashboard2')
                            elif user_role_obj.Role_Id.Role_Name == 'ficci_admin':
                                print("Ficci admin")
                                return redirect('dashboard:dashboard2')
                            elif user_role_obj.Role_Id.Role_Name == 'main_admin':
                                print("main admin")
                                return redirect('dashboard:dashboard2')
                            elif user_role_obj.Role_Id.Role_Name == 'DjangoSuperAdmin':
                                return redirect('dashboard:dashboard2')
                            else:
                                return redirect('home')
                        except:
                            return redirect('home')
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
    if request.user.is_superuser :
    #     logout(request)
        if request.method == 'POST':
            form = RegistrationForm(request.POST.copy())
            email = request.POST.get("email")

            if form.is_valid():
                    email = request.POST.get("email")
                    password = request.POST.get("password1")
                    password_confirm  = request.POST.get("password2")
                    role  = request.POST.get("role")
                    
                    print("email : ", email, " password1 : ", password ," password_confirm : ", password_confirm,role)
                    
                    if not User.objects.filter(username=email).exists():
                        user = User.objects.create(email=email, username=email)       
                        user.set_password(password)     
                        user.is_active = True
                        user.save()

                        role_id=UserRole.objects.get(id=role)
                        UserRoleMapping.objects.create(User_Id=user,Role_Id=role_id)
                        
                        resp_data=generate_otp_for_user_registration(email,OTP_For_UserRegistration)
                        if resp_data['status'] == 'success' and resp_data['Email_status']=="success":
                            User_Registration_With_OTP.apply_async((email,), countdown=300)
                            # User_Registration_With_OTP(email)
                            messages.success(request, "OTP is sent to " + email, extra_tags="success")
                            return redirect("verify_user_otp",email=email)
                        
                        elif resp_data['Email_status'] == 'error':
                            messages.success(request, resp_data['message'], extra_tags="danger")

                        elif resp_data['status'] == 'error':
                            messages.success(request, resp_data['message'], extra_tags="danger")
                        
                    else:
                        user = User.objects.get(username=email)
                        try:
                            otp_user_obj=OTP_For_UserRegistration.objects.filter(OTP_Email=email)
                        except:
                            otp_user_obj=''
                        if otp_user_obj:
                            if otp_user_obj.OTP_Status:
                                messages.error(request, 'Email address already exists', extra_tags="danger")
                                captcha_value = random_captcha_generator()
                                captcha_img_generator(captcha_value)
                                print("captcha value ", captcha_value)
                                form.fields['captcha_hidden'].initial = make_password(captcha_value)
                                return render(request, "core/user/user_register.html", {'form': form})  
                    
                        resp_data=generate_otp_for_user_registration(email,OTP_For_UserRegistration)
                        if resp_data['status'] == 'success' and resp_data['Email_status']=="success":
                            User_Registration_With_OTP.apply_async((email,), countdown=300)
                            messages.success(request, "OTP is sent to" + email, extra_tags="success")
                            return redirect("verify_user_otp",email=email)
                        
                        elif resp_data['Email_status'] == 'error':
                            messages.success(request, resp_data['message'], extra_tags="danger")

                        elif resp_data['status'] == 'error':
                            messages.success(request, resp_data['message'], extra_tags="danger")

            else:
                print("Unsuccessful registration. Invalid information.")
                messages.error(request, "Unsuccessful Registration. Invalid Information.", extra_tags='danger')
            captcha_value = random_captcha_generator()
            captcha_img_generator(captcha_value)
            form.data['captcha_input'] = ''
            form.data['captcha_hidden'] = make_password(captcha_value)
            return render(request, template_name="core/user/user_register.html", context={"form": form})
        else:
            form = RegistrationForm()
            captcha_value = random_captcha_generator()
            form.data['captcha_input'] = ''
            form.data['captcha_hidden'] = make_password(captcha_value)
            captcha_img_generator(captcha_value)
            print("captcha value ", captcha_value)
            form.fields['captcha_hidden'].initial = make_password(captcha_value)
            return render(request, "core/user/user_register.html", {'form': form})
    else:
        return redirect('home')

        ## Verify OTP here 



def verify_user_otp(request,email):
    print("inside verify_user_otp",email)
    otp_form=OTPForRegistrationForm()
    if request.method == 'POST' and 'submit' in request.POST:
        form = OTPForRegistrationForm(request.POST.copy())
        print("form===============",form)
        if form.is_valid():
            
            otp_value = request.POST.get("otp")
            status=validate_otp_for_user_registration(email, otp_value, OTP_For_UserRegistration)
            print("Status==============",status)
            if status:
                otp_user_obj=OTP_For_UserRegistration.objects.filter(OTP_Email=email)
                otp_user_obj.OTP_Status=True
                messages.success(request, "OTP Verified, Now user can login ", extra_tags="success")
                return redirect("dashboard:dashboard2")
            else:
                messages.error(request, "Failed OTP Verification", extra_tags='danger')
                return render(request, "core/user/otp_form.html", {'form': otp_form})
    if request.method == 'POST' and 'resent' in request.POST:
        otp_form=OTPForRegistrationForm()
        try: 
            user = User.objects.get(username=email)
            resp_data=generate_otp_for_user_registration(email,OTP_For_UserRegistration)
            if resp_data['status'] == 'success':
                messages.success(request, "OTP is sent to " + email, extra_tags="success")
                return redirect("verify_user_otp",email=email)
            
            # elif resp_data['Email_status'] == 'error':
            #     messages.success(request, resp_data['message'], extra_tags="danger")

            elif resp_data['status'] == 'error':
                messages.success(request, resp_data['message'], extra_tags="danger")
            return render(request, "core/user/otp_form.html", {'form': otp_form})
        except:
            messages.success(request, 'OTP generate limit exceeded, Register Again!', extra_tags="danger")
            return redirect('register_view')
    return render(request, "core/user/otp_form.html", {'form': otp_form})




@login_required()
def logout_view(request):
    logout(request)
    messages.success(request, "You are successfully logged Out", extra_tags="success")
    return redirect("login_view")

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
                    logout(request)
                    return redirect('login_view')
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
        return redirect("home")
    # form = ForgotPasswordForm()

    if request.method == 'POST':
        form = ForgotPasswordForm(request.POST.copy())
        if form.is_valid():
            email = form.cleaned_data['email']
            print("Email ", email)
            user = User.objects.filter(email=email)

            if user:
                print("User email : ", user[0].pk)

                # generate token
                domain = request.get_host()
                uid = urlsafe_base64_encode(force_bytes(user[0].pk))
                token = account_activation_token.make_token(user[0])
                link = reverse('password_creation', kwargs={"uid": uid, "token": token})
                activate_link = "http://" + domain + link
                print(domain)
                print("activate_link =================================", activate_link)

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
                    from_email=env('SERVER_EMAIL'),
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
        return redirect("dashboard:dashboard2")
    form = PasswordCreationForm()
    print(uid, token,"============================================")
    # print(urlsafe_base64_decode(uid).decode())
    # try:
    id = urlsafe_base64_decode(uid).decode()
    user = User.objects.filter(id=id)
    print(user)
    if user:
        token_data = CustomForgotPassword.objects.filter(forgot_password_token=token)
        print("Token ", token_data)
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
        return render(request, 'core/user/forgot_password_token_page.html', {'message': "User not exists", "link": 'login'})


    # except User.DoesNotExist:
    #     print("User does not exists")
    # except UnicodeDecodeError:
    #     print("uid error")
    #     return render(request, 'core/user/forgot_password_token_page.html', {'message': "Invalid URL", "link": 'forgot_password'})
    # except:
    #     print("Error in id decode")
    #     return render(request, 'core/user/forgot_password_token_page.html', {'message': "Something went wrong", "link": 'forgot_password'})

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
            return redirect('dashboard:dashboard2')
        else:
            print("Invalid User profile", form.errors)
        
    return render(request, 'core/user/user_profile.html', {'form' : form}) 
