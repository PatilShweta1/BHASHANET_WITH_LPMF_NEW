import environ
env = environ.Env()
environ.Env.read_env()
import json
from django.http import HttpResponseRedirect
import urllib.parse
from django.conf import settings


def preprocesslangset(view_func):
    def wrapper(request, *args, **kwargs):
        maindomain = request.build_absolute_uri().split('/')[2]
        requested_domain_withoutport=maindomain.split(':')[0]
        finalpath='/'+request.build_absolute_uri().split('/')[3].split('?')[0]
        pathdecode=urllib.parse.unquote(finalpath)
        domain_lang=''
        path_lang=''
        return_path=''
        print("Inside decorator",requested_domain_withoutport)
        with open(env('DOMAIN_JSON'), 'r',encoding="utf8") as j:
            dom = json.loads(j.read())
            print("hello data")
        for data in range(len(dom)):
            for key,value in dom[data].items():
                filterdomain1=value.split('/')[2]
                filterdomain2=filterdomain1.split(':')[0]
                if requested_domain_withoutport == filterdomain2 :
                    print("domain match",requested_domain_withoutport,filterdomain2)
                    domain_lang=key
                    return_domain=value
                    request.session[settings.LANGUAGE_SESSION_KEY] = key
                    print("Inside decorator",requested_domain_withoutport,key)
        return view_func(request, *args, **kwargs)
    return wrapper