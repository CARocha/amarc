from django.conf.urls import patterns, include, url
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from settings import *
from django.views.generic.simple import direct_to_template
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'cafod.views.home', name='home'),
    # url(r'^cafod/', include('cafod.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin
    (r'^accounts/login/$', 'django.contrib.auth.views.login'),
    (r'^accounts/logout/$', 'notas.views.logout_page'),
    url(r'^password_change/$',
                            'django.contrib.auth.views.password_change',
                            {'template_name': 'registration/password_change_form.html',
                            'post_change_redirect': '/foros/perfil/'},
                            name='password-change'),
    (r'^$', 'notas.views.index'),
    (r'^ckeditor/', include('ckeditor.urls')),
    url(r'^notas/', include('notas.urls')),
    url(r'^contrapartes/', include('contrapartes.urls')),
    url(r'^agendas/', include('agendas.urls')),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^tagging_autocomplete/', include('tagging_autocomplete.urls')),
    url(r'^foros/', include('foros.urls')),
    url(r'^busqueda/$', include('django_google_cse.urls')),

    #temporales de secciones que no existen
    url(r'^temporal-lista-aliado/$', direct_to_template, { 'template': 'contrapartes/aliado_list.html' }),
    url(r'^temporal-detalle-aliado/$', direct_to_template, { 'template': 'contrapartes/aliado_detail.html' }),
    url(r'^temporal-producciones-video/$', direct_to_template, { 'template': 'contrapartes/producciones_videos.html' }),
    url(r'^temporal-producciones-audio/$', direct_to_template, { 'template': 'contrapartes/producciones_audios.html' }),
)

from django.contrib.staticfiles.urls import staticfiles_urlpatterns
urlpatterns += staticfiles_urlpatterns()

if DEBUG:
    urlpatterns += patterns('',
                (r'^uploads/(?P<path>.*)$', 'django.views.static.serve', {'document_root': MEDIA_ROOT}),
                )
