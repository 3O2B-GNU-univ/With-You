from xml.etree.ElementInclude import include

from rest_framework.urlpatterns import format_suffix_patterns
from memo import views
from django.urls import re_path

urlpatterns = [
    re_path(r'^memo$', views.MemoList.as_view()),  # 목록 리스트를 위한 뷰: memo로 끝나는 URL에 대해 views.MemoList 뷰를 실행
    re_path(r'^memo/(?P<pk>[0-9]+)$', views.MemoDetail.as_view()),  # 특정 객체를 위한 뷰: memo<숫자> 형식의 URL에 대해 views.MemoDetail 뷰를 실행
]

urlpatterns = format_suffix_patterns(urlpatterns)
