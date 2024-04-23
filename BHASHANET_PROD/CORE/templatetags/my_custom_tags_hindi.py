# from django import template
# from django.urls import reverse # from django.urls for Django >= 2.0
# from django.urls import resolve # from django.urls for Django >= 2.0
# from django.utils import translation
# from django.http import HttpResponseRedirect
# from django.conf import settings
# from django.utils.translation import gettext_lazy 
# import json
# register = template.Library()

# # class TranslatedURL(template.Node):
# #     def __init__(self, language):
# #         self.language = language
# #     def render(self, context):
# #         request_language = self.language
# #         # domains= {
# #         #   "hi": "http://xn--c2bro4b8ab8d.xn--11b4c3d:8001",
# #         #   "en": "http://bhashanet.com:8001"
# #         # }
# #         view = resolve(context['request'].path)
# #         print("path67767657576567",context['request'].path)
# #         print("viewww",context['request'].build_absolute_uri().split('/')[2])
# #         print("request_language=================",request_language)
# #         path='/'
# #         domain='http://bhashanet.com:8001'
# #         with open('core\paths.json', 'r',encoding="utf8") as j:
# #             contents = json.loads(j.read())
# #         for content in range(len(contents)):
# #             for cont in range(len(contents[content])):
# #                 for key, value in contents[content]['mainpath'].items():
# #                     if value==context['request'].path:
# #                         path=contents[content]['mainpath'][request_language]
# #                         print("keyyyyyyyyyyyyoooooooooooooo",request_language)
# #         with open('core\domains.json', 'r',encoding="utf8") as j:
# #             dom = json.loads(j.read())
# #         for data in range(len(dom)):
# #             for key,value in dom[data].items():
# #                 if key==request_language:
# #                     domain=value
# #                     print("keyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",key)
# #                     context['request'].session['lang'] = key
# #         # for key, value in domains.items():
# #         #     if key==request_language:
# #         #         domain=value
        
# #         print("rerturbn path",domain+path)
# #         context['request'].session[settings.LANGUAGE_SESSION_KEY] = request_language
# #         return domain+path
 
#         # if request_language=='hi':
#         #     context['request'].session[settings.LANGUAGE_SESSION_KEY] = 'hi'
#         #     return domain+path
#         # else:
#         #     context['request'].session[settings.LANGUAGE_SESSION_KEY] = 'en'
#         #     return domain+path

               
# @register.tag(name='hindi_translate')
# def do_translate_url(parser, token):
#     print("insisfhfhgjh hindiiiid----------------------")
#     language = token.split_contents()[1]
#     # print("lang90980909090089",parser)
#     return TranslatedURL(language)
   
# class TranslatedURL(template.Node):
#     def __init__(self, language):
#         self.language = language
#     def render(self, context):
#         # print("langggygygygygygy--------------En",self.language)
#         request_language = self.language
#         # domains= {
#         #   "hi": "http://xn--c2bro4b8ab8d.xn--11b4c3d:8001",
#         #   "en": "http://bhashanet.com:8001"
#         # }
#         view = resolve(context['request'].path)
#         # print("path67767657576567",context['request'].path)
#         # print("viewww",context['request'].build_absolute_uri().split('/')[2])
#         # print("request_language=================",request_language)
#         path='/'
#         domain='http://bhashanet.com:8001'
#         with open('core\paths.json', 'r',encoding="utf8") as j:
#             contents = json.loads(j.read())
#         for content in range(len(contents)):
#             for cont in range(len(contents[content])):
#                 for key, value in contents[content]['mainpath'].items():
#                     print(key,value)
#                     print(context['request'].path)
                    
#                     if value==context['request'].path:
#                         print("-------------",request_language)
#                         path=contents[content]['mainpath'][request_language]
#                         print("pathrtyfhfjgkhghkk",path,key)
#                         # print("keyyyyyyyyyyyyoooooooooooooo",request_language)
#         with open('core\domains.json', 'r',encoding="utf8") as j:
#             dom = json.loads(j.read())
#         for data in range(len(dom)):
#             for key,value in dom[data].items():
#                 if key==request_language:
#                     domain=value
#                     # print("keyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",key)
#                     context['request'].session['lang'] = key
#                     print("domain",domain,key)
#         # for key, value in domains.items():
#         #     if key==request_language:
#         #         domain=value
        
#         # print("rerturbn path",domain+path)
#         # context['request'].session[settings.LANGUAGE_SESSION_KEY] = request_language
#         return domain+path
    
# # class TranslatedURLHI(template.Node):
# #     def __init__(self, language):
# #         self.language = language
# #     def render(self, context):
# #         print("langggygygygygygy--------------Hi",self.language)
# #         request_language = self.language
# #         # domains= {
# #         #   "hi": "http://xn--c2bro4b8ab8d.xn--11b4c3d:8001",
# #         #   "en": "http://bhashanet.com:8001"
# #         # }
# #         view = resolve(context['request'].path)
# #         print("path67767657576567",context['request'].path)
# #         print("viewww",context['request'].build_absolute_uri().split('/')[2])
# #         print("request_language=================",request_language)
# #         path='/'
# #         domain='http://bhashanet.com:8001'
# #         with open('core\paths.json', 'r',encoding="utf8") as j:
# #             contents = json.loads(j.read())
# #         for content in range(len(contents)):
# #             for cont in range(len(contents[content])):
# #                 for key, value in contents[content]['mainpath'].items():
# #                     if value==context['request'].path:
# #                         path=contents[content]['mainpath'][request_language]
# #                         print("keyyyyyyyyyyyyoooooooooooooo",request_language)
# #         with open('core\domains.json', 'r',encoding="utf8") as j:
# #             dom = json.loads(j.read())
# #         for data in range(len(dom)):
# #             for key,value in dom[data].items():
# #                 if key==request_language:
# #                     domain=value
# #                     print("keyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",key)
# #                     context['request'].session['lang'] = key
# #         # for key, value in domains.items():
# #         #     if key==request_language:
# #         #         domain=value
        
# #         print("rerturbn path",domain+path)
# #         context['request'].session[settings.LANGUAGE_SESSION_KEY] = request_language
# #         return domain+path
    
# # class TranslatedURLMR(template.Node):
# #     def __init__(self, language):
# #         self.language = language
# #     def render(self, context):
# #         print("langggygygygygygy--------------Mr",self.language)
# #         request_language = self.language
# #         # domains= {
# #         #   "hi": "http://xn--c2bro4b8ab8d.xn--11b4c3d:8001",
# #         #   "en": "http://bhashanet.com:8001"
# #         # }
# #         view = resolve(context['request'].path)
# #         print("path67767657576567",context['request'].path)
# #         print("viewww",context['request'].build_absolute_uri().split('/')[2])
# #         print("request_language=================",request_language)
# #         path='/'
# #         domain='http://bhashanet.com:8001'
# #         with open('core\paths.json', 'r',encoding="utf8") as j:
# #             contents = json.loads(j.read())
# #         for content in range(len(contents)):
# #             for cont in range(len(contents[content])):
# #                 for key, value in contents[content]['mainpath'].items():
# #                     if value==context['request'].path:
# #                         path=contents[content]['mainpath'][request_language]
# #                         print("keyyyyyyyyyyyyoooooooooooooo",request_language)
# #         with open('core\domains.json', 'r',encoding="utf8") as j:
# #             dom = json.loads(j.read())
# #         for data in range(len(dom)):
# #             for key,value in dom[data].items():
# #                 if key==request_language:
# #                     domain=value
# #                     print("keyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",key)
# #                     context['request'].session['lang'] = key
# #         # for key, value in domains.items():
# #         #     if key==request_language:
# #         #         domain=value
        
# #         print("rerturbn path",domain+path)
# #         context['request'].session[settings.LANGUAGE_SESSION_KEY] = request_language
# #         return domain+path
 


# # @register.tag(name='translate_url_en')
# # def do_translate_url(parser, token):
# #     # print("inside ennnnnnnnnnnnnn")
# #     language = 'en'
# #     return TranslatedURL(language)

# # @register.tag(name='translate_url_hi')
# # def do_translate_url(parser, token):
# #     # print("inside hiiiiiiiii")
# #     language = 'hi'
# #     return TranslatedURL(language)

# # @register.tag(name='translate_url_mr')
# # def do_translate_url(parser, token):
# #     # print("inside mrrrrrrrrrrrrr")
# #     language = 'mr'
# #     return TranslatedURL(language)


















# # from django import template
# # from django.urls import reverse # from django.urls for Django >= 2.0
# # from django.urls import resolve # from django.urls for Django >= 2.0
# # from django.utils import translation
# # from django.http import HttpResponseRedirect
# # from django.conf import settings
# # from django.utils.translation import gettext_lazy 

# # register = template.Library()

# # class TranslatedURL(template.Node):
# #     def __init__(self, language):
# #         self.language = language
# #     def render(self, context):
# #         request_language = self.language
# #         view = resolve(context['request'].path)
# #         print("viewww",context['request'].build_absolute_uri().split('/')[2])
# #         domain=context['request'].build_absolute_uri().split('/')[2]
# #         print("requested path--------------------",context['request'].path)
# #         if request_language=='hi':
# #             print("True")
# #             path=context['request'].path
# #             if context['request'].path =='/uaindiaprogramme':
# #                 path='/एयू_इंडिया_कार्यक्रम/'
# #             elif context['request'].path =='/IDNCCTLD':
# #                 path='/आईडीएन_सीसीटीएलडी/'
# #             # elif context['request'].path =='/home':
# #             #     path='/घर/'
# #             elif context['request'].path =='/documentPage':
# #                 path='/दस्तावेज़_पृष्ठ/'
# #             elif context['request'].path =='/bestpractices':
# #                 path='/सर्वोत्तम_प्रथाएं/'
# #             elif context['request'].path =='/tools':
# #                 path='/औजार/'
# #             elif context['request'].path =='/FAQS':
# #                 path='/पूछेजानेवालेप्रश्न/'
# #             elif context['request'].path =='/feedback':
# #                 path='/प्रतिक्रिया/'
# #             elif context['request'].path =='/support':
# #                 path='/सहायता/'
# #             elif context['request'].path =='/becomeuaready':
# #                 path='/यूएरेडीबनें/'
# #             elif context['request'].path =='/privacypolicy':
# #                 path='/गोपनीयतानीति/'
# #             elif context['request'].path =='/termsandconditions':
# #                 path='/नियमएवंशर्तें/'
# #             elif context['request'].path =='/documentData':
# #                 path='/दस्तावेज़डेटा/'
# #             elif context['request'].path =='/universalAcceptance':
# #                 path='/सार्वभौमिक_स्वीकृति/'
# #             elif context['request'].path =='/eai':
# #                 path='/ईएआई/'
# #             else:
# #                 path='/'
# #             context['request'].session[settings.LANGUAGE_SESSION_KEY] = 'hi'
# #             return 'http://xn--c2bro4b8ab8d.xn--11b4c3d:8001'+path
# #         elif request_language=='en':
# #             path=context['request'].path
# #             if context['request'].path =='/एयू_इंडिया_कार्यक्रम/':
# #                 path='/uaindiaprogramme'
# #             elif context['request'].path =='/आईडीएन_सीसीटीएलडी/':
# #                 path='/IDNCCTLD'
# #             # elif context['request'].path =='/घर/':
# #             #     path='/home'
# #             elif context['request'].path =='/दस्तावेज़_पृष्ठ/':
# #                 path='/documentPage'
# #             elif context['request'].path =='/सर्वोत्तम_प्रथाएं/':
# #                 path='/bestpractices'
# #             elif context['request'].path =='/औजार/':
# #                 path='/tools'
# #             elif context['request'].path =='/पूछेजानेवालेप्रश्न/':
# #                 path='/FAQS'
# #             elif context['request'].path =='/प्रतिक्रिया/':
# #                 path='/feedback'
# #             elif context['request'].path =='/सहायता/':
# #                 path='/support'
# #             elif context['request'].path =='/यूएरेडीबनें/':
# #                 path='/becomeuaready'
# #             elif context['request'].path =='/गोपनीयतानीति/':
# #                 path='/privacypolicy'
# #             elif context['request'].path =='/नियमएवंशर्तें/':
# #                 path='/termsandconditions'
# #             elif context['request'].path =='/सार्वभौमिक_स्वीकृति/':
# #                 path='/universalAcceptance'
# #             elif context['request'].path =='/ईएआई/':
# #                 path='/eai'
# #             else:
# #                 path='/'
# #             print("pathhbvhgfgfjf",context['request'].path)
# #             context['request'].session[settings.LANGUAGE_SESSION_KEY] = 'en'
# #             return 'http://bhashanet.com:8001'+path
# #         else:
# #             print("False")
# #             request_language = translation.get_language()
# #             translation.activate(self.language)
# #             url = reverse(view.url_name, args=view.args, kwargs=view.kwargs)
# #             translation.activate(request_language)
# #             return url

# # @register.tag(name='translate_url')
# # def do_translate_url(parser, token):
# #     language = token.split_contents()[1]
# #     return TranslatedURL(language)