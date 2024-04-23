from django import forms
from .models import EmailSend
from .validate import validate_send_mass_mail_form

class SendEmail(forms.ModelForm):
    email_body = forms.CharField(widget=forms.Textarea(attrs={"label":"Email Message","class":"form-control my-2", 'placeholder': 'Enter Message', 'autocomplete': 'off'}))
    email_subject = forms.CharField(max_length=500, widget=forms.TextInput(attrs={"label":"Email Subject","class":"form-control mb-2", 'placeholder': 'Enter Email Subject', 'autocomplete': 'off'}))
    # email_attachment = forms.FileField(required=False, widget=forms.ClearableFileInput(attrs={"label":"Attachments",'multiple': True}))
    class Meta:
        model = EmailSend
        fields = [
            'email_subject',
            'email_body'
        ]

    def clean(self):
        print("FORMS.PY FILE : CLEAN METHOD CALLING")
        # data is feteched using the super function of django
        super(SendEmail, self).clean()
        validate_send_mass_mail_form(self)
