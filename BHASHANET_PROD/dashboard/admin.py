from django.contrib import admin
from .models import *

# Register your models here.
admin.site.register(category_list)
admin.site.register(English_Domain)
admin.site.register(language_list)
admin.site.register(URL_dashboard)
admin.site.register(BulkEmail)
admin.site.register(BulkEmailAttachments)

