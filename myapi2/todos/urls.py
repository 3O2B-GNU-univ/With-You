from xml.etree.ElementInclude import include

from rest_framework.urlpatterns import format_suffix_patterns
from todos import views
from django.urls import re_path

urlpatterns = [
    re_path(r'^todos$', views.TodosList.as_view()),  # 목록 리스트를 위한 뷰: todos로 끝나는 URL에 대해 views.TodosList 뷰를 실행
    re_path(r'^todos/(?P<pk>[0-9]+)$', views.TodosDetail.as_view()),  # 특정 객체를 위한 뷰: todos<숫자> 형식의 URL에 대해 views.TodosDetail 뷰를 실행
]

urlpatterns = format_suffix_patterns(urlpatterns)