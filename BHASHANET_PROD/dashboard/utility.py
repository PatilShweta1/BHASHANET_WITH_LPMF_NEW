from .forms import *
from django.core.exceptions import ValidationError
from django import forms
from BHASHANET_PROD.logger import *
from urllib.parse import urlparse
from .models import *
import idna
import unicodedata
import dns.resolver
import dns.exception
from .utility import *

'''
English Domain Form VALIDATION

'''
#################################################

def is_valid_english_domain(domain):
    logs(f"Inside is_valid_english_domain function with received {domain}")
    check_domain=domain.split('/')[2]
    logs(f"check domain is {check_domain}")
    try:
        decoded_domain = idna.decode(check_domain)
        encoded_domain_bytes=idna.encode(check_domain)
        encoded_domain_string = encoded_domain_bytes.decode('utf-8')
        encoded_domain_split=str(encoded_domain_string).split("b'")[0]
        if check_domain == decoded_domain and check_domain == encoded_domain_split:
            logs("utility.py file --- User has entered English Domain")
            return True
        else:
            logs("utility.py file --- User has not entered English domain")
            return False
    except idna.IDNAError:
        logs("utility.py file --- Error in Given English or IDN domain")
        return False

#################################################

def validate_English_Domain_Form_Category(category):
    logs(f"Inside validate_English_Domain_Form_Category Function")
   
    # Category Vaidation 
    if category is None:
        logs("utility.py file -- No category has been selected by user ")
        raise forms.ValidationError("Please Select Category From List")
    
    if str(category) not in ["Government", "Private", "Others"]:
        logs(f'utility.py file -- category selected by user is {category}')
        raise forms.ValidationError("Please Select Valid Category.")

#################################################

def  validate_English_Domain_Form_Department(department_name):
    logs(f"Inside validate_English_Domain_Form_Department Function")
    
     # Department Validation
    if department_name is None:
        logs("utility.py file -- User has not entered department name")
        raise forms.ValidationError("Please Enter Department Name") 
    
#################################################

def validate_English_Domain_Form_Domain_Name(domain_name):
    logs(f"Inside validate_English_Domain_Form_Domain_Name Function")
   
    # Domain Validation For Blank Input
    if domain_name is None:
        logs("utility.py file -- User has not entered any domain name")
        raise forms.ValidationError("Please Enter English Domain")
    
    # Domain Validation For Domain Without http and https
    if not domain_name.startswith(('http://', 'https://')):
        logs("utility.py file -- No 'http://' or 'https://' in domain entered by user.")
        raise forms.ValidationError("Please Enter Domain Name starting with 'http://' or 'https://'.")
      
    # Checking Validation For Length of Domain after removing Protocol Part http and https  
    if domain_name.startswith(('http://', 'https://')):
        domain_name_without_protocol = domain_name.split('://', 1)[1]  # Remove the protocol part
        logs(f"After removing protocol part domain is -- {domain_name_without_protocol}")
        # Check if the length of domain_name (after removing protocol) is not more than 256 characters
        if len(domain_name_without_protocol) > 256:
            logs("utility.py file --The length of domain name is more than 256 characters long.")
            raise forms.ValidationError("The domain name (excluding 'http://' or 'https://') cannot be more than 256 characters long.")
    
    # Check if user has input valid English Domain
    if is_valid_english_domain(domain_name):
        logs(f"English Domain {domain_name} is correct")
    else:
        logs(f"Please Enter Correct English Domain")
        raise forms.ValidationError("Please Enter Correct English Domain")
    
    # Check if domain already exists
    English_Domain_List = English_Domain.objects.values_list('domain_name', flat=True)
    if str(domain_name) in English_Domain_List:
        logs(f"{domain_name} Domain Already Exist")
        raise forms.ValidationError("Domain Already Exist")
    
##################################################

'''
IDN DASHBOARD Form VALIDATION
'''
#################################################

def check_valid_idn_domain(domain):
    logs(f"Inside check_valid_idn_domain function with received {domain}")
    check_domain=domain.split('/')[2]
    logs(f"IDN check domain is {check_domain}")
    try:
        decoded_domain = idna.decode(check_domain)
        encoded_domain_bytes=idna.encode(check_domain)
        encoded_domain_string = encoded_domain_bytes.decode('utf-8')
        encoded_domain_split=str(encoded_domain_string).split("b'")[0]
        if check_domain == decoded_domain and check_domain == encoded_domain_split:
            logs("utility.py file --- User has entered English Domain")
            return True
        else:
            logs("utility.py file --- User has not entered English domain . He Has Entered IDN Domain")
            return False
    except idna.IDNAError:
        logs("utility.py file --- Error in Given English or IDN domain")
        return False
    
#################################################

def validate_idn_dashboard_form_English_domain(English_domain):
    
    # Check if English domain_name is provided
    if not English_domain:
        logs(f"User has not selected nay English Domain From The List")
        raise forms.ValidationError("Please Select English Domain Name")

    # Check if English domain_name is selected from list only 
    English_Domain_List = English_Domain.objects.values_list('domain_name', flat=True)   
    if str(English_domain) not in English_Domain_List:
        logs("utility.py file -- User has not selected English Domain From the List . Tempered Data Provided")
        raise forms.ValidationError("Please Select English Domain From Given List Only")  

##################################################

def validate_idn_dashboard_form_Language(Language):
    
    # Check if language is provided
    if not Language:
        logs("utility.py file -- User has not selected any Language")
        raise forms.ValidationError("Please Select Language")
    
    # Check if language is selected from list only  
    language_list_List = language_list.objects.values_list('language_name', flat=True)  
    if str(Language) not in language_list_List:
        logs("utility.py file -- User has not selected Language From the List . Tempered Data Provided")
        raise forms.ValidationError("Please Select Language From Given List Only")
    
##################################################

def validate_idn_dashboard_form_IDN_domain(self,IDN_domain):
    English_domain  = self.cleaned_data.get('English_domain')
    Language  = self.cleaned_data.get('Language')
    IDN_domain  = self.cleaned_data.get('IDN_domain')
    

    
    # Check if IDN domain_name is provided
    if not IDN_domain:
        logs("utility.py file -- User has not entered any IDN Domain Name")
        raise forms.ValidationError("Please Enter IDN Domain Name")
    
    # Check if IDN Domain Name starts with http or https
    if not IDN_domain.startswith(('http://', 'https://')):
        logs("utility.py file -- User entered IDN Domain without 'http://' or 'https://'.")
        raise forms.ValidationError("Please Enter Domain Name starting with 'http://' or 'https://'.")
    
    # Check if User has entered only valid IDN Domain Not English DOmain 
    if check_valid_idn_domain(IDN_domain):
        logs(f"User has entered domain in English {IDN_domain}. He did not enter in IDN Format")
        raise forms.ValidationError("Please Enter Domain in IDN Format")
    else:
        logs(f"User Enter Correct IDN Domain {IDN_domain}")
   

    # Check if IDN Domain already exists in DB or Not   
    IDN_Domain_List = URL_dashboard.objects.values_list('IDN_domain', flat=True) 
    logs(f"IDN Domains in the DB are -- {IDN_Domain_List}")
    converted_unicode_domain = ""
    
    try:
        converted_unicode_domain = idna.decode(IDN_domain.split('/')[2])
        logs(f"Converted Unicode domain from punycode is -- {converted_unicode_domain}")
    except:
        converted_unicode_domain = IDN_domain.split('/')[2]
        logs(f"User has entered Unicode domain  -- {converted_unicode_domain}")

    converted_unicode_domain=IDN_domain.split('/')[0] + '//' + converted_unicode_domain  
    logs(f"Final Converted Unicode Domain is {converted_unicode_domain}")
    
    if str(converted_unicode_domain) in IDN_Domain_List:
        logs(f"IDN Domain {converted_unicode_domain}is being checked if it exists or not") 
        logs("IDN Domain Already Exist")
        raise forms.ValidationError("IDN Domain Already Exist")
        
###################################################################

def validate_english_domain_name(domain_name): 
    logs(f"Inside validate_english_domain_name Function") 
    # Domain Validation For Blank Input 
    if domain_name is None: 
        logs("utility.py file -- User has not entered any domain name") 
        return False 
    # Domain Validation For Domain Without http and https 
    if not domain_name.startswith(('http://', 'https://')): 
        logs("utility.py file -- No 'http://' or 'https://' in domain entered by user.") 
        return False 
    # Checking Validation For Length of Domain after removing Protocol Part http and https   
    if domain_name.startswith(('http://', 'https://')): 
        domain_name_without_protocol = domain_name.split('://', 1)[1]  # Remove the protocol part 
        logs(f"After removing protocol part domain is -- {domain_name_without_protocol}") 
        # Check if the length of domain_name (after removing protocol) is not more than 256 characters 
        if len(domain_name_without_protocol) > 256: 
            logs("utility.py file --The length of domain name is more than 256 characters long.") 
            return False 
    # Check if user has input valid English Domain 
    if is_valid_english_domain(domain_name): 
        logs(f"English Domain {domain_name} is correct") 
    else: 
        logs(f"Please Enter Correct English Domain") 
        return False 
    return True 

def validate_IDN_domain_name(IDN_domain): 
    if not IDN_domain: 
        logs("utility.py file -- User has not entered any IDN Domain Name") 
        return False 
    # Check if IDN Domain Name starts with http or https 
    if not IDN_domain.startswith(('http://', 'https://')): 
        logs("utility.py file -- User entered IDN Domain without 'http://' or 'https://'.") 
        return False 
    # Check if User has entered only valid IDN Domain Not English DOmain 
    if check_valid_idn_domain(IDN_domain): 
        logs(f"User has entered domain in English {IDN_domain}. He did not enter in IDN Format") 
        return False 
    else: 
        logs(f"User Enter Correct IDN Domain {IDN_domain}") 
    return True 

