from urllib.parse import urlsplit
from django.conf import settings

def custom_context(request):
  maindomain = request.build_absolute_uri().split('/')[2]
  requesteddomainwithoutport=maindomain.split(':')[0]
  language_for_selection='en'
  # if lang == 'en' :
  #     language_for_selection='en'                                    
  # elif lang == 'hi' :
  #     language_for_selection='Hindi-हिंदी'
  # elif lang == 'mr' :
  #   language_for_selection='Marathi-मराठी'
  # elif lang == 'kn' :
  #   language_for_selection='Kannada-ಕನ್ನಡ'
  # elif lang == 'ml' :
  #   language_for_selection='Malayalam-മലയാളം'
  # elif lang == 'bn' :
  #   language_for_selection='Bengali-বাংলা'
  # elif lang == 'mni' :
  #   language_for_selection='Manipuri-মণিপুরী'
  # elif lang == 'ur' :
  #   language_for_selection='Urdu-اردو '
  # elif lang == 'gu' :
  #   language_for_selection='Gujarati-ગુજરાતી'
  # elif lang == 'pa' :
  #   language_for_selection='Punjabi-ਪੰਜਾਬੀ'
  # elif lang == 'ta' :
  #   language_for_selection='Tamil-தமிழ்'
  # elif lang == 'te' :
  #   language_for_selection='Telugu-తెలుగు'
  # elif lang == 'as' :
  #   language_for_selection='Assamese-অসমীয়া'
  # elif lang == 'kok' :
  #   language_for_selection='Konkani-कोंकणी'
  # elif lang == 'or' :
  #   language_for_selection='Odia-ଓଡିଆ'
  # elif lang == 'sat' :
  #   language_for_selection='Santali-संथाली'
  # elif lang == 'ne' :
  #   language_for_selection='Nepali-नेपाली'
  # elif lang == 'doi' :
  #   language_for_selection='Dogri-डोगरी'
  # elif lang == 'brx' :
  #   language_for_selection='Bodo-Bodo'
  # elif lang == 'ks' :
  #   language_for_selection='Kashmiri-Kashmiri'
  # elif lang == 'sdin' :
  #   language_for_selection='Sindhi-सिंधी'
  # elif lang == 'mai' :
  #   language_for_selection='Maithili-मैथिली'
  # elif lang == 'sa' :
  #   language_for_selection='Sanskrit-संस्कृत'
  
  # # check for urdu and kashmiri domain
  # # if requesteddomainwithoutport == "xn-----btdbc3d4hd37blpqm.xn--mgbbh1a71e" or requesteddomainwithoutport == "xn----ymcac5dzf1p7v.xn--mgbbh1a":
  # # check for urdu domain only
  # if requesteddomainwithoutport == "xn-----btdbc3d4hd37blpqm.xn--mgbbh1a71e":
  #   print("True from context")
  #   return {'urdu_domain': True,'language_for_selection':language_for_selection}
  # elif requesteddomainwithoutport=="xn--uwcjna1a5bb9d4cb.xn--rvc1e0am3e":
  #   return {'malayalam_domain': True,'language_for_selection':language_for_selection} 
  # else:
  #   print("False from context")
  return {'urdu_domain': False,'language_for_selection':language_for_selection}
  


  
  
  
  

