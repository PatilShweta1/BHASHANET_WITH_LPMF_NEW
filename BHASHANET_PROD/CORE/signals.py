from django.db.models.signals import post_save, pre_delete
from django.contrib.auth.models import User
from django.dispatch import receiver
from .models import Blog
from django.core.mail import send_mail
import environ

env = environ.Env()
environ.Env.read_env()


@receiver(post_save, sender=Blog)
def create_profile(sender, instance, created, **kwargs):
    print("inside signal s",created)
    if created:
        print('done')
        # email_sent_status = send_mail('Test', 'Test message Body', env('SERVER_EMAIL'), ['sgpltr@gmail.com'])
        # if email_sent_status == 1:
        #     print("Email sent to email" + 'sgpltr@gmail.com')
        # else:
        #     print("Email not sent")
        
  