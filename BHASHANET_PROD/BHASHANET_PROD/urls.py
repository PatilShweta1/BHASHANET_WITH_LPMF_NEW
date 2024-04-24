from django.contrib import admin
from django.urls import path, include, re_path as url

# ----ADDED BY SANJAYB ----
from django.conf import settings
from django.conf.urls.static import static
from CORE import views as core_views
from CORE import user_view as user_views
from django.views.static import serve
from MASS_MAIL import views as mass_mail_views
from django.utils.translation import gettext_lazy as _
from discussion_forum.views import *

# ----ADDED BY SANJAYB ----

from django.contrib.sitemaps.views import sitemap
from CORE.sitemap import StaticSitemap


# Translation_urlpatterns_hindi = [
#     path('होम', core_views.home , name='home'),
#     path('गोपनीयतानीति', core_views.privacypolicy, name='privacypolicy'),
#     path('नियमएवंशर्तें', core_views.termsandconditions, name='termsandconditions'),
#     path('यूए_इंडिया_कार्यक्रम', core_views.uaindiaprogramme, name='uaindiaprogramme'),
#     path('आईडीएन_सीसीटीएलडी', core_views.IDNCCTLD, name='IDNCCTLD'),
#     path('सर्वोत्तम_प्रथाएं', core_views.bestpractices, name='bestpractices'),
#     path('ईएआई', core_views.EAI, name='EAI'),
#     path('सार्वभौमिक_स्वीकृति', core_views.UA, name='UA'),
#     path('औजार', core_views.tools, name='tools'),
#     path('यूनिकोड_पुनीकोड_​​जनरेटर', core_views.unicode_punycode_generator, name='unicode_punycode_generator'),
#     path('यूनिकोड_फोंट', core_views.unicode_fonts, name='unicode_fonts'),
#     path('लिप्यंतरण', core_views.transliteration, name='transliteration'),
#     path('स्क्रिप्ट_का_पता_लगाने', core_views.script_detection, name='script_detection'),
#     path('डोमेन_सत्यापनकर्ता', core_views.domain_validator, name='domain_validator'),
#     path('ईमेल_सत्यापनकर्ता', core_views.email_validator, name='email_validator'),
#     path('प्रतिक्रिया', core_views.feedback, name='feedback'),
#     path('यूएरेडीबनें', core_views.becomeuaready, name='becomeuaready'),
#     path('पूछेजानेवालेप्रश्न', core_views.FAQs, name='FAQs'),
#     path('दस्तावेज़_पृष्ठ', core_views.documentPage, name='documentPage'),
#     path('दस्तावेज़डेटा', core_views.documentData, name='documentData'),
#     path('सहायता', core_views.support, name='support'),
#     #path('testimonial', core_views.testimonial, name='testimonial'),
#     path('खोज_के_परिणाम', core_views.search_results, name='search_results'),
#     #path('testimonials', core_views.testimonials, name='testimonials'),
#     path('आईडीएन_वेबसाइटों/<int:id>', core_views.idn_websites, name='idn_websites'),
#     path('आयोजन', core_views.event, name='event'),
#     path('गेलरी', core_views.gallery, name='gallery'),
#     path('language_detectionh', core_views.language_detection, name='language_detection'), # added by tanvi patil
#     path('cdac_keyboardhi', core_views.cdac_keyboard, name='cdac_keyboard'),
#     path('sop_tech_pagehi', core_views.SOPTechnalogyPage, name='sop_tech_page'), 
#     path('sop_document_pagehi', core_views.sop_document_page, name='sop_document_page'), 
#     path('sop_documenthi', core_views.sop_document, name='sop_document'), 
   
    
#     path('tld_validatorhi', core_views.tld_validator, name='tld_validator'),
#     path('डैशबोर्ड', core_views.dashboard, name='dashboard'),
#     path('ब्लॉगस', core_views.blogs, name='blogs'),
#     path('वर्गीकृत/<str:id>', core_views.cat_selected, name='cat_selected'),
#     path('ब्लॉगएकल/<str:id>', core_views.blog, name='blog'),
#     path('test_supporthi', core_views.test_support, name='test_support'),

#     path('add_bloghi', core_views.add_blog, name='add_blog'),
#     path('edit_bloghi/<str:id>', core_views.edit_blog, name='edit_blog'),
#     path('delete_bloghi/<str:id>', core_views.delete_blog, name='delete_blog'),
#     path('blog_datatablehi', core_views.admin_blog_datatable, name='admin_blog_datatable'),
#     path('search_bloghi/<str:id>', core_views.search_blog, name='search_blog'),
#     path('loginhi', user_views.login_view, name='login_view'),
#     path('registerhi', user_views.register_view, name='register_view'),
#     # path('activate/<uid64>/<token>', user_views.user_activate_view, name='user_activate'),
#     path('logouthi', user_views.logout_view, name='logout_view'),
#     path('change_passwordhi', user_views.change_password_view, name='change_password'),
#     path('forgot_passwordhi', user_views.forgot_password_view, name='forgot_password'),
#     path('password_creationhi/<uid>/<token>', user_views.password_creation_view, name='password_creation'),
#     path('discussion_forum_topic_listhi', topic_list, name="topic_list"),
#     path('discussion_forum_user_topic_listhi', user_topic_list, name="user_topic_list"),
#     path('discussion_forum_add_topichi', add_topic, name="add_topic"),
#     path('discussion_forum_view_topic_discussionhi/<slug:topic_slug>', view_topic_discussion, name="view_topic_discussion"),
#     path('submit_answerhi/<slug:topic_slug>', submit_answer, name='submit_answer'),
#     path('upvote_answerhi', upvote_answer_view, name='upvote_answer_view'),
#     path('test_taskhi', core_views.test_celery, name="test_task"),
#     path('user_profilehi', user_views.user_profile_view, name='user_profile'),
#     path('admindashboardhi', core_views.admindashboard, name='admindashboard'),
# ]


# Translation_urlpatterns_marathi = [
#     path('मुख्यपान', core_views.home, name='home'),
#     path('गोपनीयताधोरण', core_views.privacypolicy, name='privacypolicy'),
#     path('नियमआणिअटी', core_views.termsandconditions, name='termsandconditions'),
#     path('यूएइंडियाकार्यक्रम', core_views.uaindiaprogramme, name='uaindiaprogramme'),
#     path('आईडीएनसीसीटीएलडी', core_views.IDNCCTLD, name='IDNCCTLD'),
#     path('चांगलासराव', core_views.bestpractices, name='bestpractices'),
#     path('ईए_आई', core_views.EAI, name='EAI'),
#     path('सार्वत्रिक_स्वीकृती', core_views.UA, name='UA'),
#     path('साधने', core_views.tools, name='tools'),
#     path('यूनिकोडपुनीकोड​जनरेटर', core_views.unicode_punycode_generator, name='unicode_punycode_generator'),
#     path('यूनि_कोड_फोंट', core_views.unicode_fonts, name='unicode_fonts'),
#     path('लिप्यं_तरण', core_views.transliteration, name='transliteration'),
#     path('स्क्रिप्ट_डिटेक्शन', core_views.script_detection, name='script_detection'),
#     path('डोमेनसत्यापनकर्ता', core_views.domain_validator, name='domain_validator'),
#     path('ईमेलसत्यापनकर्ता', core_views.email_validator, name='email_validator'),
#     path('अभिप्राय', core_views.feedback, name='feedback'),
#     path('तयारझाले', core_views.becomeuaready, name='becomeuaready'),
#     path('विचारण्यासाठीप्रश्न', core_views.FAQs, name='FAQs'),
#     path('दस्तऐवजपृष्ठ', core_views.documentPage, name='documentPage'),
#     path('दस्तऐवजडेटा', core_views.documentData, name='documentData'),
#     path('समर्थन', core_views.support, name='support'),
#     # #path('testimonialmr', core_views.testimonial, name='testimonial'),
#     path('शोध_परिणाम', core_views.search_results, name='search_results'),
#     # #path('testimonialsmr', core_views.testimonials, name='testimonials'),
#     path('आयडीएन_वेबसाइट्स/<int:id>', core_views.idn_websites, name='idn_websites'),
#     path('क्रार्यक्रम', core_views.event, name='event'),
#     path('गॅलरी', core_views.gallery, name='gallery'),
#     path('language_detectionmr', core_views.language_detection, name='language_detection'), # added by tanvi patil
#     path('cdac_keyboardmr', core_views.cdac_keyboard, name='cdac_keyboard'),
#     path('sop_tech_pagemr', core_views.SOPTechnalogyPage, name='sop_tech_page'), 
#     path('sop_document_pagemr', core_views.sop_document_page, name='sop_document_page'), 
#     path('sop_documentmr', core_views.sop_document, name='sop_document'), 
    
    
    
#     path('tld_validatormr', core_views.tld_validator, name='tld_validator'),
#     path('डॅशबोर्ड', core_views.dashboard, name='dashboard'),
#     path('ब्लॉगमराठी', core_views.blogs, name='blogs'),
#     path('श्रेणीचयनित/<str:id>', core_views.cat_selected, name='cat_selected'),
#     path('ब्लॉगसिंगल/<str:id>', core_views.blog, name='blog'),
#     # path('test_supportmr', core_views.test_support, name='test_support'),


#     path('add_blogmr', core_views.add_blog, name='add_blog'),
#     path('edit_blogmr/<str:id>', core_views.edit_blog, name='edit_blog'),
#     path('delete_blogmr/<str:id>', core_views.delete_blog, name='delete_blog'),
#     path('blog_datatablemr', core_views.admin_blog_datatable, name='admin_blog_datatable'),
#     path('search_blogmr/<str:id>', core_views.search_blog, name='search_blog'),
#     path('loginmr', user_views.login_view, name='login_view'),
#     path('registermr', user_views.register_view, name='register_view'),
#     # path('activate/<uid64>/<token>', user_views.user_activate_view, name='user_activate'),
#     path('logoutmr', user_views.logout_view, name='logout_view'),
#     path('change_passwordmr', user_views.change_password_view, name='change_password'),
#     path('forgot_passwordmr', user_views.forgot_password_view, name='forgot_password'),
#     path('password_creationmr/<uid>/<token>', user_views.password_creation_view, name='password_creation'),
#     path('discussion_forum_topic_listmr', topic_list, name="topic_list"),
#     path('discussion_forum_user_topic_listmr', user_topic_list, name="user_topic_list"),
#     path('discussion_forum_add_topicmr', add_topic, name="add_topic"),
#     path('discussion_forum_view_topic_discussionmr/<slug:topic_slug>', view_topic_discussion, name="view_topic_discussion"),
#     path('submit_answermr/<slug:topic_slug>', submit_answer, name='submit_answer'),
#     path('upvote_answermr', upvote_answer_view, name='upvote_answer_view'),
#     path('test_taskmr', core_views.test_celery, name="test_task"),
#     path('user_profilemr', user_views.user_profile_view, name='user_profile'),
#     path('admindashboardmr', core_views.admindashboard, name='admindashboard'),
# ]


sitemaps = {
    'bhashanet_static': StaticSitemap,
}

urlpatterns = [
    url(r'^media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}),
    url(r'^static/(?P<path>.*)$', serve, {'document_root': settings.STATIC_ROOT}),
    path('admin/', admin.site.urls),
    path('rosetta/', include('rosetta.urls')),
    path('captcha_refresh/', core_views.captcha_refresh, name='captcha_refresh'),  # added by shivam sharma
    path('sitemap.xml', sitemap, {'sitemaps':sitemaps}, name='django.contrib.sitemaps.views.sitemap'),
    path('ckeditor/', include('ckeditor_uploader.urls')),
    path('submit_reply_to_answer/<slug:topic_slug>/<answer_id>', submit_reply_to_answer, name='submit_reply_to_answer'),
    path('submit_reply_to_answer_2/<slug:topic_slug>/<answer_id>/<reply_id>', submit_reply_to_answer_2, name='submit_reply_to_answer_2'),
    path('SopDownloadCounter/<int:id>', core_views.SopDownloadCounter,name='SopDownloadCounter'),
    path('update_json', core_views.update_json, name="update_json"),
    path('display_table2', core_views.display_table2, name="display_table2"),
    path('idn_rediness_dashboard', core_views.idn_rediness_dashboard, name="idn_rediness_dashboard"),   

    
]

Translation_urlpatterns = [
    path((''), core_views.landingfunction, name='home'),
    path(_('home'), core_views.home, name='home'),
    path(_('privacypolicy'), core_views.privacypolicy, name='privacypolicy'),
    path(_('termsandconditions'), core_views.termsandconditions, name='termsandconditions'),
    path(_('uaindiaprogramme'), core_views.uaindiaprogramme, name='uaindiaprogramme'),
    path(_('IDNCCTLD'), core_views.IDNCCTLD, name='IDNCCTLD'),
    path(_('bestpractices'), core_views.bestpractices, name='bestpractices'),
    path(_('EAI'), core_views.EAI, name='EAI'),
    path(_('UA'), core_views.UA, name='UA'),
    path(_('tools'), core_views.tools, name='tools'),
    path(_('unicode_punycode_generator'), core_views.unicode_punycode_generator, name='unicode_punycode_generator'),
    path(_('unicode_fonts'), core_views.unicode_fonts, name='unicode_fonts'),
    path(_('transliteration'), core_views.transliteration, name='transliteration'),
    path(_('script_detection'), core_views.script_detection, name='script_detection'),
    path(_('domain_validator'), core_views.domain_validator, name='domain_validator'),
    path(_('email_validator'), core_views.email_validator, name='email_validator'),
    path(_('feedback'), core_views.feedback, name='feedback'),
    path(_('becomeuaready'), core_views.becomeuaready, name='becomeuaready'),
    path(_('FAQS'), core_views.FAQs, name='FAQs'),
    path(_('documentPage'), core_views.documentPage, name='documentPage'),
    path(_('documentData'), core_views.documentData, name='documentData'),
    path(_('support'), core_views.support, name='support'),
    path(_('testimonial'), core_views.testimonial, name='testimonial'),
    path(_('search_results'), core_views.search_results, name='search_results'),
    path(_('testimonials'), core_views.testimonials, name='testimonials'),
    path(_('idn_websites/<str:id>'), core_views.idn_websites, name='idn_websites'),
    path(_('event'), core_views.event, name='event'),
    path(_('gallery'), core_views.gallery, name='gallery'),
    path(_('language_detection'), core_views.language_detection, name='language_detection'), # added by tanvi patil
    path(_('cdac_keyboard'), core_views.cdac_keyboard, name='cdac_keyboard'), # added by tanvi patil
    path(_('sop_tech_page'), core_views.SOPTechnalogyPage, name='sop_tech_page'), 
    path(_('sop_document_page'), core_views.sop_document_page, name='sop_document_page'), 
    path(_('sop_document'), core_views.sop_document, name='sop_document'), 
    path(_('tld_validator'), core_views.tld_validator, name='tld_validator'),
    path(_('dashboard'), core_views.dashboard, name='dashboard'),
    path(_('admindashboard'), core_views.admindashboard, name='admindashboard'),
    path(_('blogs'), core_views.blogs, name='blogs'),
    path(_('cat_selected/<str:id>'), core_views.cat_selected, name='cat_selected'),
    path(_('blog/<str:id>'), core_views.blog, name='blog'),
    path(_('test_support'), core_views.test_support, name='test_support'),
    path(_('mass_mail'), mass_mail_views.mass_mail, name='mass_mail'),
    path(_('idn_websites_request'), core_views.idn_websites_request_AJAX, name='idn_websites_request_AJAX'),
    path(_('idn_websites_request1'), core_views.idn_websites_request1, name='idn_websites_request1'),
    path(_('add_blog'), core_views.add_blog, name='add_blog'),
    path(_('edit_blog/<str:id>'), core_views.edit_blog, name='edit_blog'),
    path(_('delete_blog/<str:id>'), core_views.delete_blog, name='delete_blog'),
    path(_('blog_datatable'), core_views.admin_blog_datatable, name='admin_blog_datatable'),
    path(_('search_blog/<str:id>'), core_views.search_blog, name='search_blog'),
    path(_('login'), user_views.login_view, name='login_view'),
    path(_('register'), user_views.register_view, name='register_view'),
    path('activate/<uid64>/<token>', user_views.user_activate_view, name='user_activate'),
    path(_('logout'), user_views.logout_view, name='logout_view'),
    path(_('change_password'), user_views.change_password_view, name='change_password'),
    path(_('forgot_password'), user_views.forgot_password_view, name='forgot_password'),
    path(_('password_creation/<uid>/<token>'), user_views.password_creation_view, name='password_creation'),
    path(_('discussion_forum_topic_list'), topic_list, name="topic_list"),
    path(_('discussion_forum_user_topic_list'), user_topic_list, name="user_topic_list"),
    path(_('discussion_forum_add_topic'), add_topic, name="add_topic"),
    path(_('discussion_forum_view_topic_discussion/<slug:topic_slug>'), view_topic_discussion, name="view_topic_discussion"),
    path(_('submit_answer/<slug:topic_slug>'), submit_answer, name='submit_answer'),
    path(_('upvote_answer'), upvote_answer_view, name='upvote_answer_view'),
    path(_('test_task'), core_views.test_celery, name="test_task"),
    path(_('user_profile'), user_views.user_profile_view, name='user_profile'),
    path("<path>", core_views.RenderPageWithPathAndLang, name="RenderPageWithPathAndLang"),
    path("<path>"+"/<uid>"+"/<token>", core_views.RenderPageWithPathAndLangIdToken, name='RenderPageWithPathAndLangIdToken'),
    path("<path>"+"/<str:id>", core_views.RenderPageWithPathAndLangId, name="RenderPageWithPathAndLangId"),
      
]

urlpatterns = urlpatterns + Translation_urlpatterns




if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

handler404 = 'CORE.views.custom_page_not_found_view'
handler500 = 'CORE.views.custom_error_view'
handler403 = 'CORE.views.custom_permission_denied_view'
handler400 = 'CORE.views.custom_bad_request_view'
