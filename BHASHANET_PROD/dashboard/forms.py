import json
from django import forms
from django.forms import ModelForm
from .models import URL_dashboard, English_Domain, language_list, category_list
from .validation import *
from BHASHANET_PROD.logger import *

from .validation import validate_idn_dashboard_form

class idn_dashboard_form(forms.ModelForm):
    IDN_domain = forms.CharField(label="Enter Idn Domain", max_length=200, widget=forms.TextInput(
        attrs={"class": "form-control", 'id': 'inputIdnDomain', "placeholder": "Enter domain",
               'autocomplete': 'off', 'required': True}))
    English_domain = forms.ModelChoiceField(label="Select English Domain",
                                            queryset=English_Domain.objects.all(),
                                            widget=forms.Select(
                                                attrs={"class": "form-control",
                                                       'id': 'inputEnglishDomain',
                                                       'autocomplete': 'off'}))

    Language = forms.ModelChoiceField(label="Select Language",
                                      queryset=language_list.objects.all(),
                                      widget=forms.Select(
                                          attrs={"class": "form-control",
                                                 'id': 'inputLanguage',
                                                 'autocomplete': 'off'}))

    class Meta:
        model = URL_dashboard
        fields = ['IDN_domain', 'English_domain', 'Language']
        
    def __init__(self, *args, **kwargs):
        # Accepts any positional (*args) and keyword (**kwargs) arguments
        # Pop the 'is_new' keyword argument from kwargs and assign its value to self.is_new,
        # defaulting to False if it's not provided 
        self.is_new = kwargs.pop('is_new', False)
        # Call the __init__ method of the parent class (superclass) with any remaining
        # positional and keyword arguments 
        super(idn_dashboard_form, self).__init__(*args, **kwargs) 

    def clean(self):
        logs("forms.py file --  Inside Clean method of idn_dashboard_form ")
        super(idn_dashboard_form, self).clean()
        logs("forms.py file --  Function validate_idn_dashboard_form is being called for validations ")
        validate_idn_dashboard_form(self)
        logs("forms.py file --  All Validation Successfull For IDN Form")
        
#################################################
        
class English_Domain_Form(forms.ModelForm):
    category = forms.ModelChoiceField(label="Select Website Category",
                                      queryset=category_list.objects.all(),
                                      widget=forms.Select(
                                          attrs={"class": "form-control",
                                                 'id': 'EnglishCategory',
                                                 'autocomplete': 'off'}))

    domain_name = forms.CharField(label="Enter English Domain", max_length=256, widget=forms.TextInput(
        attrs={"class": "form-control", 'id': 'inputengDomain', "placeholder": "Enter english domain",
               'autocomplete': 'off', 'required': True}))

    department_name = forms.CharField(label="Enter Department Name", max_length=300, widget=forms.TextInput(
        attrs={"class": "form-control", 'id': 'inputengDomain', "placeholder": "Enter Department Name",
               'autocomplete': 'off', 'required': True}))

    class Meta:
        model = English_Domain
        fields = ['department_name', 'domain_name', 'category']

    def clean(self):
        logs("forms.py file --  Inside Clean method of English_Domain_Form ")
        super(English_Domain_Form, self).clean()
        logs("forms.py file --  Function validate_English_Domain_Form is being called for validations ")
        validate_English_Domain_Form(self)
        logs("forms.py file --  All Validation Successfull For English Form")

#################################################

class BulkEmail_Form(forms.ModelForm):
    email_subject = forms.CharField(label="Enter Subject", max_length=800, widget=forms.TextInput(
        attrs={"class": "form-control", 'id': 'email_subject', "placeholder": "Enter Email Subject",
               'autocomplete': 'off', 'required': True}))
    
    email_receipient_list = forms.FileField(label="Upload Receipient List", widget=forms.FileInput(
        attrs={'style': 'border-radius:6px', 'class': 'form-control','id':"Receipient_list",'required': True}))
    
      
    class Meta:
        model = BulkEmail
        fields = ['email_subject', 'email_message', 'email_receipient_list']
    
    def clean(self):
        logs("forms.py file --  Inside Clean method of BulkEmail_Form ")
        super(BulkEmail_Form, self).clean()
        logs("forms.py file --  Function BulkEmail_Form is being called for validations ")
        # validate_English_Domain_Form(self)
        logs("forms.py file --  All Validation Successfull For BulkEmail_Form")



#################################################

class ExcelUploadForm(forms.Form):
    excel_file = forms.FileField(label="Upload Excel File", widget=forms.FileInput(
        attrs={'style': 'border-radius:6px', 'class': 'form-control','id':"ExcelFile"}))
 
#################################################

class AdminLoginForm(forms.Form):
    username = forms.CharField(
        max_length=150,
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Username'}),
        label='Username'
    )
    password = forms.CharField(
        widget=forms.PasswordInput(attrs={'class': 'form-control', 'placeholder': 'Password'}),
        label='Password'
    )
 