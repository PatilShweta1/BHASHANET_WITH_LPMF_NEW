from django import forms
from django.forms import ModelForm, Form
from .models import *
from ckeditor.widgets import CKEditorWidget
from ckeditor.fields import RichTextFormField
from .validate import *
from django.core import validators
from django.contrib.auth.forms import UserCreationForm


class Feedback_form(ModelForm):
    Feedback_FirstName = forms.CharField(label="Name", max_length=30, widget=forms.TextInput(
        attrs={'placeholder': 'Enter Your Name', 'id': 'Feedback_FirstName', 'class': 'form-control form-control-lg',
               'autocomplete': 'off'}))
    Feedback_Email = forms.CharField(label="Name", max_length=300, widget=forms.TextInput(
        attrs={'placeholder': 'Enter Your Email ID', 'id': 'Feedback_Email', 'class': 'form-control form-control-lg',
               'autocomplete': 'off'}))
    Feedback_Related_To = forms.ModelChoiceField(label='Select Category', required=True,
                                            help_text='Select Category',
                                            queryset=FeedbackCategory.objects.all(), widget=forms.Select(
            attrs={'style': 'border-color: grey ;margin-bottom:20px', 'placeholder': 'select',
                   'id': 'Feedback_Category', 'class': 'form-control form-control-lg', 'autocomplete': 'off'}), )
    Feedback_Message = forms.CharField(label=" Your Feedback", widget=forms.Textarea(
        attrs={'style': 'border-color: grey ;margin-bottom:20px', 'placeholder': 'Enter Your Feedback',
               'id': 'Feedback_Message', 'class': 'form-control form-control-lg', 'autocomplete': 'off'}))

    captcha_hidden = forms.CharField(widget=forms.HiddenInput(), required="False")
    captcha_input = forms.CharField(max_length=5, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'id': 'inputCaptcha', 'placeholder': 'Enter Captcha', 'name': 'captcha'}))

    class Meta:
        model = UserFeedbackData
        fields = [
            'Feedback_FirstName',
            'Feedback_Email',
            'Feedback_Related_To',
            'Feedback_Message'
        ]

    def clean(self):
        print("FORMS.PY FILE : CLEAN METHOD CALLING")
        # data is feteched using the super function of django
        super(Feedback_form, self).clean()
        validate_feedbackform(self)


class Domain_Syntax_Check_form(ModelForm):
    Domain_Name = forms.CharField(label="Domain", max_length=30, widget=forms.TextInput(
        attrs={'placeholder': 'Enter your domain', 'id': 'Domain', 'class': 'form-control form-control-lg',
               'autocomplete': 'off'}))

    class Meta:
        model = DomainSyntax
        fields = [
            'Domain_Name'
        ]

    def clean(self):
        print("FORMS.PY FILE : CLEAN METHOD CALLING")
        # data is feteched using the super function of django
        super(Domain_Syntax_Check_form, self).clean()
        validate_domain(self)


class Email_Syntax_Check_form(ModelForm):
    Email_Address = forms.CharField(label="Email", max_length=30, widget=forms.TextInput(
        attrs={'placeholder': 'Enter your Email', 'id': 'email', 'class': 'form-control form-control-lg',
               'autocomplete': 'off'}))

    class Meta:
        model = EmailSyntax
        fields = [
            'Email_Address'
        ]

    def clean(self):
        print("FORMS.PY FILE : CLEAN METHOD CALLING")
        # data is feteched using the super function of django
        super(Email_Syntax_Check_form, self).clean()
        validate_email(self)

class IDN_Ready_Websites(Form):
    select_category = forms.ModelMultipleChoiceField(queryset=IDNReadyWebsitesCategory.objects.all(), widget=forms.CheckboxSelectMultiple)
    select_language = forms.ModelMultipleChoiceField(queryset=IDNReadyWebsitesLanguages.objects.all(), widget=forms.CheckboxSelectMultiple)

    



class Blog_form(ModelForm):
    Blog_Title = forms.CharField(label="Blog Title", max_length=800, widget=forms.TextInput(
        attrs={'placeholder': 'Enter Blog Title', 'id': 'Blog_Title', 'class': 'form-control form-control-lg'}))
    Blog_Description = forms.CharField(label="Blog Description", max_length=2000, widget=forms.TextInput(
        attrs={'placeholder': 'Enter Blog Description', 'id': 'Blog_Description', 'class': 'form-control form-control-lg',}))
    Blog_Body: RichTextFormField()
    Blog_CategoryType = forms.ModelChoiceField(required=True, queryset=BlogCategory.objects.all(),
                                                   widget=forms.Select(
                                                       attrs={'class': 'form-control', 'id': 'Blog_CategoryType',
                                                            }))
    Blog_Status = (('Published', 'PUBLISHED'),
                       ('Unpublished', 'UNPUBLISHED'))
    Blog_PublishedStatus = forms.ChoiceField(validators=[validators.MaxLengthValidator(15)], required=True,
                                            help_text='Select Status',
                                            choices=Blog_Status, widget=forms.Select(
            attrs={'style': 'border-color: grey ;margin-bottom:20px', 'placeholder': 'select',
                   'id': 'Blog_PublishedStatus', 'class': 'form-control form-control-lg', 'autocomplete': 'off'}), )
    

    class Meta:
        model = Blog
        fields = [
            'Blog_Title',
            'Blog_Description',
            'Blog_Body',
            'Blog_CategoryType',
            'Blog_PublishedStatus',
            'Blog_Thumbnail',
            'Blog_DocumentFile'
        ]
       
    def clean(self):
        super(Blog_form, self).clean()
        validate_Blog_form(self)


#### ---------------- Added by shivam sharma


class RegistrationForm(forms.Form):
    email = forms.CharField(max_length=60, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'id': 'inputEmail', 'placeholder': 'Enter Email', 'autocomplete': 'off'}))

    password1 = forms.CharField(required=True, strip=False, widget=forms.PasswordInput(
        attrs={'class': 'form-control', 'id': 'inputPassword', 'placeholder': 'Enter Password', 'name': 'password1'}))
    password2 = forms.CharField(required=True, strip=False, widget=forms.PasswordInput(
        attrs={'class': 'form-control', 'id': 'inputPassword1', 'placeholder': 'Confirm Password'}))
    
    role = forms.ModelChoiceField(required=True, queryset=UserRole.objects.exclude(id=4),widget=forms.Select(attrs={'class': 'form-control',
                                                                                                             'id': 'UserRole',}))

    captcha_hidden = forms.CharField(widget=forms.HiddenInput(), required="False")
    captcha_input = forms.CharField(max_length=5, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'id': 'inputCaptcha', 'placeholder': 'Enter Captcha', 'name': 'captcha'}))

    # class Meta:
    #     model = User
    #     # model._meta.get_field('email')._unique = True
    #     fields = ("email", "password1", "password2")
     

    def clean(self):
        super(RegistrationForm, self).clean()
        validate_registerform(self)

    # def save(self, email, commit=True):
    #     print("jjjjj")
    #     user = super(RegistrationForm, self).save(commit=False)
    #     print("email ", User.objects.exclude(
    #         pk=self.instance.pk).filter(username=email).exists())
    #     if not User.objects.exclude(pk=self.instance.pk).filter(username=email).exists():
    #         user.username = self.cleaned_data['email']
    #         user.email = self.cleaned_data['email']
    #         user.password1 = self.cleaned_data['password1']
    #         user.password2 = self.cleaned_data['password2']
    #         if commit:
    #             user.is_active = False
    #             user.save()
    #         return user
    #     else:
    #         duplicate_user = User.objects.get(username=email)
    #         print("duplicate_user ", duplicate_user.is_active)

    #         if not duplicate_user.is_active:
    #             duplicate_user.password1 = self.cleaned_data['password1']
    #             duplicate_user.password2 = self.cleaned_data['password2']
    #             if commit:
    #                 duplicate_user.save()
    #             return duplicate_user
    #         else:
    #             return self.add_error('email', "email address already exists")


class LoginForm(forms.Form):
    # username = forms.EmailField(max_length=60, required=True, widget=forms.TextInput(
    #     attrs={'class': 'form-control', 'id': 'inputEmail', 'placeholder': 'Enter Email', 'autocomplete': 'off'}))
    
    username = forms.CharField(max_length=60, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'id': 'inputEmail', 'placeholder': 'Enter Email', 'autocomplete': 'off'}))

    password = forms.CharField(required=True, strip=False, widget=forms.PasswordInput(
        attrs={'class': 'form-control', 'id': 'inputPassword', 'placeholder': 'Enter Password', 'name': 'password'}))

    captcha_hidden = forms.CharField(widget=forms.HiddenInput(), required="False")
    captcha_input = forms.CharField(max_length=5, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'id': 'inputCaptcha', 'placeholder': 'Enter Captcha', 'name': 'captcha'}))

    def clean(self):
        print("FORMS.PY FILE : CLEAN METHOD CALLING")
        # data is feteched using the super function of django
        super(LoginForm, self).clean()
        validate_login_form(self)
    

## ----- Change Password 
class ChangePasswordUserForm(forms.Form):
    old_password = forms.CharField(min_length=3, max_length=20, required=True, strip=False, widget=forms.PasswordInput(
        attrs={'class': 'form-control', id: "inputOldPassword", 'placeholder': 'Enter Old Password',
               'name': 'old_password'}))
    new_password = forms.CharField(min_length=8, max_length=20, required=True, strip=False, widget=forms.PasswordInput(
        attrs={'class': 'form-control', id: "inputNewPassword", 'placeholder': 'Enter New Password',
               'name': 'new_password'}))
    confirm_password = forms.CharField(min_length=8, max_length=20, required=True, strip=False,
                                       widget=forms.PasswordInput(
                                           attrs={'class': 'form-control', id: "inputConfirmPassword",
                                                  'placeholder': 'Enter Confirm Password', 'name': 'confirm_password'}))

    def clean(self):
        print("FORMS.PY FILE : CLEAN METHOD CALLING")
        super(ChangePasswordUserForm, self).clean()
        validate_change_password_user_form(self)
        
        

class ForgotPasswordForm(forms.Form):
    email = forms.EmailField(max_length=60, required=True, widget=forms.EmailInput(
        attrs={'class': 'form-control', 'id': 'inputEmail', 'placeholder': 'Enter Email', 'autocomplete': 'off'}))
    
    captcha_hidden = forms.CharField(widget=forms.HiddenInput(), required="False")
    captcha_input = forms.CharField(max_length=5, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'id': 'inputCaptcha', 'placeholder': 'Enter Captcha', 'name': 'captcha'}))
    
    def clean(self):
        print("FORMS.PY FILE : CLEAN METHOD CALLING")
        # data is feteched using the super function of django
        super().clean()
        validate_forgot_password_form(self)


class PasswordCreationForm(forms.Form):
    password = forms.CharField(min_length=8, max_length=20, required=True, strip=False, widget=forms.PasswordInput(
        attrs={'class': 'form-control', 'id': "inputNewPassword", 'placeholder': 'Enter Password', 'name': 'password'}))
    confirm_password = forms.CharField(min_length=8, max_length=20, required=True, strip=False,
                                       widget=forms.PasswordInput(
                                           attrs={'class': 'form-control', 'id': "inputConfirmPassword",
                                                  'placeholder': 'Enter Confirm Password', 'name': 'confirm_password'}))

    def clean(self):
        print("FORMS.PY FILE : CLEAN METHOD CALLING")
        # data is feteched using the super function of django
        super(PasswordCreationForm, self).clean()
        validate_password_creation_form(self)


class IDNRequestForUserWebsitesForm(ModelForm):
    IDN_Email = forms.CharField(max_length=500, required=True, 
                                widget=forms.TextInput(attrs={"class" : "form-control", "placeholder" : "Enter Email Address"}))
    IDN_Category = forms.ModelChoiceField(queryset=IDNRequestForUserWebsitesCategories.objects.filter(website_status="Active"), required=True, empty_label="Please Select",
                                     widget=forms.Select(attrs={"class" : "form-control", "placeholder" : "Domain Name (English)"}))
    IDN_English_Domain = forms.CharField(max_length=600, required=True, 
                                         widget=forms.TextInput(attrs={"class" : "form-control", "placeholder" : "Enter Domain Name (English)"}))
    
    
    captcha_hidden = forms.CharField(widget=forms.HiddenInput(), required="False")
    captcha_input = forms.CharField(max_length=5, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'id': 'inputCaptcha', 'placeholder': 'Enter Captcha', 'name': 'captcha'}))
    
    class Meta:
        model = IDNRequestForUserWebsites
        fields = [ "IDN_Email", "IDN_Category", "IDN_English_Domain" ]

   
    def clean(self):
        print("FORMS.PY FILE : CLEAN METHOD CALLING")
        super(IDNRequestForUserWebsitesForm, self).clean()
        validate_IDNRequestForUserWebsitesForm(self)



class UserProfileForm(ModelForm):
    UserProfile_name = forms.CharField(required=True, widget=forms.TextInput(attrs={"class" : "form-control", "placeholder" : "Enter Full Name", 'autocomplete': 'off'}))
    UserProfile_designation = forms.CharField(required=True, widget=forms.TextInput(attrs={"class" : "form-control", "placeholder" : "Enter Designation", 'autocomplete': 'off'}))
    UserProfile_organization = forms.CharField(required=True, widget=forms.TextInput(attrs={"class" : "form-control", "placeholder" : "Enter Organization Name", 'autocomplete': 'off'}))
    UserProfile_Bio = forms.CharField(label="Your Feedback", widget=forms.Textarea(
        attrs={'style': "height: 100px;", 'placeholder': 'Enter Bio', 'class': 'form-control', 'autocomplete': 'off'}))
    UserProfile_organization_logo = forms.ImageField(required=True, widget=forms.ClearableFileInput(attrs={"class" : "form-control", "id": "profile_image"}))
    
    
    class Meta:
        model = UserProfile
        fields = ["UserProfile_name", "UserProfile_designation", "UserProfile_organization", "UserProfile_organization_logo", "UserProfile_Bio"]

   
    def clean(self):
        print("FORMS.PY FILE : CLEAN METHOD CALLING")
        super(UserProfileForm, self).clean()
        validate_user_profile_form(self)




class OTPForRegistrationForm(forms.Form):
    
    otp=forms.IntegerField(required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'id': 'inputOTP', 'placeholder': 'Enter OTP', 'autocomplete': 'off'}))

    
    def clean(self):
        super(OTPForRegistrationForm, self).clean()
        