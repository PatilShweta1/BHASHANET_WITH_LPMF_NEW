from django import forms

def validate_send_mass_mail_form(self):
    print("VALIDATE.PY FILE: in validate_send_mass_mail_form function ")
    email_body = self.cleaned_data.get('email_body')
    email_subject = self.cleaned_data.get('email_subject')
    email_attachment = self.cleaned_data.get('email_attachment')
    # captcha_hidden = self.cleaned_data.get('captcha_hidden')
    # captcha_input = self.cleaned_data.get('captcha_input')

    print("VALIDATE.PY FILE : MASS MAIL FORM EMAIL BODY --- ", email_body)
    print("VALIDATE.PY FILE : MASS MAIL FORM EMAIL SUBJECT  --- ", email_subject)
    print("VALIDATE.PY FILE : MASS MAIL FORM RELATED EMAIL ATTACHMENT --- ", email_attachment)
  

    if email_subject is None:
        print("VALIDATE.PY FILE : MASS MAIL FORM EMAIL SUBJECT VALIDATION FAILED ")
        raise forms.ValidationError("Please Enter Email Subject")

    if email_body is None:
        print("VALIDATE.PY FILE : MASS MAIL FORM EMAIL BODY VALIDATION FAILED ")
        raise forms.ValidationError("Please Enter Email Body")
    
    if len(email_subject) < 2 or len(email_subject)>500:
        print("VALIDATE.PY FILE : MASS MAIL FORM EMAIL SUBJECT VALIDATION FAILED ")
        raise forms.ValidationError("Email subject must be minimum 2 and maximum 500 characters long")
    
    if len(email_body) < 2 or len(email_subject)>5000:
        print("VALIDATE.PY FILE : MASS MAIL FORM EMAIL SUBJECT VALIDATION FAILED ")
        raise forms.ValidationError("Email body must be minimum 2 and maximum 5000 characters long")
    
    
    

