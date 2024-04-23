from django import template
from django.urls import reverse # from django.urls for Django >= 2.0
from django.urls import resolve # from django.urls for Django >= 2.0
from django.utils import translation
from django.http import HttpResponseRedirect
from django.conf import settings
from django.utils.translation import gettext_lazy 
import json
from django.conf import settings
import environ

env = environ.Env()
environ.Env.read_env()

register = template.Library()


              
@register.tag(name='translate_url')
def do_translate_url(parser, token):
    language = token.split_contents()[1]
    return TranslatedURL(language)
    

class TranslatedURL(template.Node):
    def __init__(self, language):
        self.language = language
    def render(self, context):
        maindomain=context['request'].build_absolute_uri().split('/')[2]
        request_language = self.language
        view = resolve(context['request'].path)
        requested_path=context['request'].path.split('/')[1]
        requested_english_path=context['request'].path.split('/')[1]
        # print("context['request'].path.split('/')[1]----------",context['request'].path.split('/')[1])
        path=''
        # domain='http://'+ maindomain.split(':')[0] Default domain server
        # domain='http://bhashanet.in:8001' Default domain local
        # domain=env('DOMAIN')
        domain=''
        with open(env('PATH_JSON'), 'r',encoding="utf8") as j:
            contents = json.loads(j.read())
        for content in range(len(contents)):
            for cont in range(len(contents[content])):
                for key, value in contents[content]['mainpath'].items():
                    requested_path=context['request'].path.split('/')[1]
                    #requested_path=context['request'].path
                    if value=='/'+requested_path:
                        path=contents[content]['mainpath'][request_language]
                        requested_english_path=contents[content]['mainpath']['en']
        #domainjsonserver=settings.BASE_DIR+'CORE\domains.json'
        # domainjsonwindows='CORE\domains.json'
        with open(env('DOMAIN_JSON'), 'r',encoding="utf8") as j:
            dom = json.loads(j.read())
        for data in range(len(dom)):
            for key,value in dom[data].items():
                if key==request_language:
                    domain=value
        # print("+++++++++++",path,domain)
        # print("requested requested_english_path from custom tag",requested_english_path,context['request'].path,view.captured_kwargs)
        if requested_english_path == '/password_creation':
            # print("inside main=-===================")
            uid=''
            try:
                uid=view.captured_kwargs['uid']
            except:
                pass
            token=''
            try:
                token=str(view.captured_kwargs['token'])
            except:
                pass

            returnpath=domain+path+'/'+uid+'/'+token
            # print("requested path from custom tag",returnpath)
        elif requested_english_path !='/submit_reply_to_answer' or requested_english_path != '/submit_reply_to_answer_2':
            if view.captured_kwargs:
                para=''
                try:
                    para=view.captured_kwargs['id']
                except:
                    pass
                try:
                    para=view.captured_kwargs['topic_slug']
                except:
                    pass
                
                if para:
                    id=para
                    id_to_send=str(id)
                    returnpath=domain+path+'/'+id_to_send
                else:
                    returnpath=domain+path
            else:
                returnpath=domain+path
       
        return returnpath
