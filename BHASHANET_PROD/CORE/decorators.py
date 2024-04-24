import environ
env = environ.Env()
environ.Env.read_env()
import json
from django.http import HttpResponseRedirect
import urllib.parse


def my_preprocess(view_func):
    def wrapper(request, *args, **kwargs):
        maindomain = request.build_absolute_uri().split('/')[2]
        requested_domain_withoutport=maindomain.split(':')[0]
        finalpath='/'+request.build_absolute_uri().split('/')[3].split('?')[0]
        pathdecode=urllib.parse.unquote(finalpath)
        domain_lang=''
        path_lang=''
        return_path=''
     
        with open(env('DOMAIN_JSON'), 'r',encoding="utf8") as j:
            dom = json.loads(j.read())
        for data in range(len(dom)):
            for key,value in dom[data].items():
                filterdomain1=value.split('/')[2]
                filterdomain2=filterdomain1.split(':')[0]
                if requested_domain_withoutport == filterdomain2 :
                    domain_lang=key
                    return_domain=value
                  
        with open(env('PATH_JSON'), 'r',encoding="utf8") as j:
            dom = json.loads(j.read())
        for data in range(len(dom)):
            for key,value in dom[data].items():
                if pathdecode == value :
                    return_path = dom[data][domain_lang]
                    path_lang=key
        if path_lang==domain_lang:
            return view_func(request, *args, **kwargs)
        else:
            response = HttpResponseRedirect(return_domain+return_path)
            return response
    return wrapper



