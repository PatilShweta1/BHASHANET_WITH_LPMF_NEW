from django.db import models
from django.core.validators import FileExtensionValidator

# Create your models here.
class EmailSend(models.Model):
    email_body = models.TextField()
    email_subject = models.CharField(max_length=500)
    created_date=models.DateField(auto_now_add=True)
    last_updated_date=models.DateField(auto_now=True)

    class Meta:
        db_table = 'Email_Send'
        verbose_name_plural = "Email Send"

    def __str__(self):
        return self.email_subject or ''


class EmailAttachment(models.Model):
    email_attachment = models.FileField(upload_to="mass_mail/email_attachment",
                                             validators=[FileExtensionValidator(['pdf', 'zip', 'csv', 'xls', 'ppt', 'html', 'jpg', 'png', 'txt'])], null=True, blank=True)
    email_send = models.ForeignKey(EmailSend, on_delete=models.CASCADE)

    class Meta:
        db_table = 'Email_Attachment'
        verbose_name_plural = "Email Attachment"

    def __str__(self):
        return self.email_subject or ''