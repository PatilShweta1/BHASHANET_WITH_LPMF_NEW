from django.contrib import admin
from . models import EmailSend, EmailAttachment
# Register your models here.
admin.site.register(EmailSend)
admin.site.register(EmailAttachment)