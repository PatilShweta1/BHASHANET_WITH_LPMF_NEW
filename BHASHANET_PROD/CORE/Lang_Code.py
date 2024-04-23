import environ
import json
env = environ.Env()
environ.Env.read_env()


def get_path_lang_key(request):
    lang='en'
    with open(env('PATH_JSON'), 'r',encoding="utf8") as j:
            contents = json.loads(j.read())
    for content in range(len(contents)):
        for cont in range(len(contents[content])):
            for key, value in contents[content]['mainpath'].items():
                requested_path='/'+request.path.split('/')[1]
                if value==requested_path:
                    lang=key
    return lang
    

def get_domain_lang_key(request):
    lang_domain='en'
    maindomain = request.build_absolute_uri().split('/')[2]
    requesteddomainwithoutport=maindomain.split(':')[0]
    with open(env('DOMAIN_JSON'), 'r',encoding="utf8") as j:
            dom = json.loads(j.read())
    for data in range(len(dom)):
        for key,value in dom[data].items():
            filterdomain1=value.split('/')[2]
            filterdomain2=filterdomain1.split(':')[0]
            if requesteddomainwithoutport == filterdomain2 :
                lang_domain=key
    return lang_domain
     