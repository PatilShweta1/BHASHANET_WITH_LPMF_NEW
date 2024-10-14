from pathlib import Path
# ----- ADDED BY SANJAYB -----
from django.utils.translation import gettext_lazy as _
import environ

env = environ.Env()
environ.Env.read_env()

# ----- ADDED BY SANJAYB -----

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/4.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-984utnkw-xq6lmtge9b8c@_376z*4qrszqwx^cc6z-o485db7b'

# SECURITY WARNING: don't run with debug turned on in production!
#DEBUG = env('DEBUG')
DEBUG = True

ALLOWED_HOSTS = [ '127.0.0.1','localhost','भाषानेट.कॉम','भाषानेट.भारत','मराठी.भाषानेट.भारत',
                 'xn--d2b1ag0dl.xn--c2bro4b8ab8d.xn--h2brj9c','xn--c2bro4b8ab8d.xn--11b4c3d',
                 'bhashanet.in','bhashanet.com', 'xn--c2bro4b8ab8d.xn--h2brj9c',
                 'xn--xscro4b8ab1dzc.xn--2scrj9c','ಭಾಷಾನೆಟ್.ಭಾರತ',
                 'ഭാഷാനെറ്റ്.ഭാരതം','xn--uwcjna1a5bb9d4cb.xn--rvc1e0am3e',
                 'ভাষানেট.ভারত','xn--z5bro4b8ab8d.xn--45brj9c','মণিপুরী.ভাষানেট.ভারত',
                 'xn--35bokk7eif.xn--z5bro4b8ab8d.xn--45brj9c','xn--mgbab3c5e7n3t.xn--mgbbh1a',
                 'xn--becro4b8ab8d.xn--gecrj9c','ભાષાનેટ.ભારત',
                 'xn--n9bro8bukc7e.xn--s9brj9c','ਭਾਸ਼ਾਨੇਟ.ਭਾਰਤ',
                 'xn--mlcrf6c8ab1dzc.xn--xkc2dl3a5ee0h','பாஷாநெட்.இந்தியா',
                 'xn--9ocro4b8ab1dzc.xn--fpcrj9c3d','భాషానెట్.భారత్'
                 'xn--z5bro4b8ab8d.xn--45br5cyl','ভাষানেট.ভাৰত',
                 'xn--i1b1bb0d0hoc.xn--c2bro4b8ab8d.xn--h2brj9c','कोंकणी.भाषानेट.भारत',
                 'xn--yhcro4b8ab8d.xn--3hcrj9c','ଭାଷାନେଟ.ଭାରତ',
                 'xn-----btdbc3d4hd37blpqm.xn--mgbbh1a71e','xn--z5bro4b8ab8d.xn--45br5cyl', 
                 'xn--c2brfy4bwnt8d.xn--h2brj9c8c','पा़रसीनेट.भारोत','xn--l2bey1cl2b.xn--c2bro4b8ab8d.xn--h2brj9c',
                 'भाशानैट्ट.भारत','xn--c2bazt9b7bb5f1b.xn--h2brj9c','रावारिनेट.भारत','xn--c2brxay7cbj7e.xn--h2brj9c',
                 'xn----ymcac5dzf1p7v.xn--mgbbh1a','xn--i1b8e2b2ah.xn--c2bro4b8ab8d.xn--h2brj9c',
                 'xn--i2brn5cg8b.xn--c2bro4b8ab8d.xn--h2brj9c','मैथिली.भाषानेट.भारत',
                 'xn--c2bro4b8ab8d.xn--h2breg3eve','भाषानेट.भारतम्','xn--mgba2b5dua02apa.xn--mgbgu82a']

# Application definition

SYSTEM_APPS = [
    'admin_interface',
    'colorfield',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.sitemaps',
    
]
CKEDITOR_UPLOAD_PATH = "uploads/"
# -----ADDED BY SANJAYB -----

THIRD_PARTY_APPS = ['django_celery_results', 'tinymce','ckeditor']
APPLICATION_APPS = ['CORE', 'MASS_MAIL', 'discussion_forum','dashboard','blog']
INSTALLED_APPS = SYSTEM_APPS + APPLICATION_APPS + THIRD_PARTY_APPS


# ----- ADDED BY SANJAYB -----

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.locale.LocaleMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'corsheaders.middleware.CorsMiddleware',
]

# RESTRICT_ADMIN=True
# ALLOWED_ADMIN_IPS=['127.0.0.1','192.168.175.32']
# ALLOWED_ADMIN_IP_RANGES=['127.0.0.0/24', '::/1']
# RESTRICTED_APP_NAMES=['admin']
# TRUST_PRIVATE_IP=True


ROOT_URLCONF = 'BHASHANET_PROD.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'CORE.context_processors.custom_context',
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
    
]

WSGI_APPLICATION = 'BHASHANET_PROD.wsgi.application'

# Database
# https://docs.djangoproject.com/en/4.1/ref/settings/#databases


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': env('DATABASE_NAME'),
        'USER': env('DATABASE_USER'),
        'PASSWORD': env('DATABASE_PASSWORD'),
        'HOST': env('DATABASE_HOST'),
        'PORT': '3306',
        'OPTIONS': {
            'init_command': 'SET sql_mode="STRICT_TRANS_TABLES"',
            'charset': 'utf8mb4'
        }
    },
    'osticket': { 
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'os_ticket_db',
        'USER': 'root',
        'PASSWORD': 'manager',
        'HOST': 'localhost',
        'PORT': '3306',
    },
    'dashboard': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'BHASHANET_ADMIN_DASHBOARD_DB2',
        'USER': 'root',
        'PASSWORD': 'g!$t',
        'HOST': 'db1-staging.pune.cdac.in',
        'PORT': '3306',
        'OPTIONS': {
            'init_command': 'SET sql_mode="STRICT_TRANS_TABLES"',
            'charset': 'utf8mb4',
        },
        'CONN_MAX_AGE': 600,  # 10 minutes in seconds
    },
}

DATABASE_ROUTERS = ['CORE.db_routers.MyAppRouter']

# Password validation
# https://docs.djangoproject.com/en/4.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    # {
    #     'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    # },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

# Internationalization
# https://docs.djangoproject.com/en/4.1/topics/i18n/

LANGUAGE_CODE = 'en'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_TZ = True

USE_L10N = True

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.1/howto/static-files/

# Default primary key field type
# https://docs.djangoproject.com/en/4.1/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

STATIC_URL = 'static/'
STATIC_ROOT = BASE_DIR / 'static'

# Path where media is stored
MEDIA_DIR = BASE_DIR / 'media'
MEDIA_ROOT = MEDIA_DIR

# Base url to serve media files
MEDIA_URL = '/media/'

LANGUAGE_SESSION_KEY = 'session_language_appname'
LANGUAGE_COOKIE_NAME = 'cookie_language_appname'


# SERVER_EMAIL = env('SERVER_EMAIL')
# EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
# EMAIL_HOST = 'smtp.cdac.in'
# EMAIL_HOST_PASSWORD = env('EMAIL_HOST_PASSWORD')  # please enter password
# EMAIL_HOST_USER = SERVER_EMAIL
# EMAIL_PORT = 587
# # EMAIL_USE_TLS = True
# DEFAULT_FROM_EMAIL = EMAIL_HOST_USER



SERVER_EMAIL = ''
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.cdac.in'
EMAIL_HOST_PASSWORD = ''  # please enter password
EMAIL_HOST_USER = SERVER_EMAIL
EMAIL_PORT = 587
# EMAIL_USE_TLS = True
DEFAULT_FROM_EMAIL = EMAIL_HOST_USER




# LOGIN_URL="login_view"


# CELERY SETTINGS 
CELERY_BROKER_URL = 'redis://127.0.0.1:6379'
CELERY_ACCEPT_CONTENT = ['application/json']
CELERY_RESULT_SERIALIZER = 'json'
CELERY_TASK_SERIALIZER = 'json'
CELERY_TIMEZONE = 'Asia/Kolkata'

# CELERY RESULTS SETINGS
CELERY_RESULT_BACKEND = 'django-db'


# CELERY CACHE SETINGS
CELERY_CACHE_BACKEND = 'default'



LOCALE_PATHS = [
    BASE_DIR / 'locale/',
]


LANGUAGES = (
    ('en', 'English'),
    ('hi', 'Hindi'),
    ('mr', 'Marathi'),
    ('ml', 'Malayalam'),
    ('kn', 'Kannada'),
    ('gu', 'Gujarati'),
    ('bn', 'Bengali'),
    ('ur', 'Urdu'),
    ('mni', 'Manipuri'),
    ('te','Telugu'),
    ('pa','Panjabi'),
    ('ta','Tamil'), 
    ('kok','Konkani'),
    ('ks','Kashmiri'),  
    ('as','Assamese'),  
    ('sdin','Sindhi'), 
    ('or','Oriya'),  
    ('sa','Sanskrit'),     
    ('mai','Maithili'),   
    ('sat','Santali'),  
    ('brx','Bodo'),       
    ('doi','Dogri'),   
    ('ne','Nepali'),                                      
)

LOGIN_URL = '/admin_login'