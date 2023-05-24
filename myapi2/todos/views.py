from django.shortcuts import render
"""
# Create your views here.
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializer import TodoSerializer
from .models import Todos


@api_view(["GET"])
def todolist(req):
    todos = Todos.objects.all()
    serializer = TodoSerializer(todos, many=True)
    return Response(serializer.data)


@api_view(["POST"])
def todocreate(req):
    serializer = TodoSerializer(data=req.data)
    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data)
    return Response(serializer.errors)


@api_view(["DELETE"])
def tododelete(req, pk):
    todo = Todos.objects.get(id=pk)
    todo.delete()
    return Response("Delete Success")


@api_view(["PUT"])
def todoupdate(req, pk):
    todo = Todos.objects.get(id=pk)
    serializer = TodoSerializer(todo, data=req.data)
    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data)
    return Response(serializer.errors)"""

from todos.models import Todos
from todos.serializers import TodosSerializer
from django.http import Http404
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response


class TodosList(APIView):  # 목록에 대한 view
    #  투두 조회
    def get(self, request, format=None):
        todos = Todos.objects.all()  # 메모의 모든 객체를
        serializer = TodosSerializer(todos, many=True)  # 시리얼라이즈 해서
        return Response(serializer.data)  # 응답으로 시리얼라이즈 데이터를 반환

    # 투두 생성
    def post(self, request, format=None):
        serializer = TodosSerializer(data=request.data)
        if serializer.is_valid():  # 시리얼라이즈가 유효하면
            serializer.save()  # 저장한 뒤
            return Response(serializer.data, status=status.HTTP_201_CREATED)  # 응답으로 201상태와 시리얼라이즈 데이터를 반환
        return Response(serializer.error, status=status.HTTP_400_BAD_REQUEST)  # 유효하지 않으면 404 에러를 반환


class TodosDetail(APIView):  # 특정 객체에 대한 view
    def get_object(self, pk):
        try:
            return Todos.objects.get(pk=pk)  # pk에 해당하는 메모 객체를 반환
        except Todos.DoesNotExist:  # 없으면 404에러 반환
            return Http404

    # 특정 투두 조회
    def get(self, request, pk, format=None):
        todos = self.get_object(pk)  # pk에 해당하는 객체를 반환
        serializer = TodosSerializer(todos)  # 이를 시리얼라이즈하여
        return Response(serializer)  # 시리얼라이즈 데이터를 반환

    # 특정 투두 수정
    def put(self, request, pk, format=None):
        todos = self.get_object(pk)  # pk에 해당하는 객체를 반환
        serializer = TodosSerializer(todos, data=request.data)  # 해당 객체를 요청받은 데이터로 시리얼라이즈
        if serializer.is_valid():  # 시리얼라이즈가 유효하면
            serializer.save()  # 저장
            return Response(serializer.data)  # 반환
        return Response(serializer.error, status=status.HTTP_400_BAD_REQUEST)  # 아니면 400에러 반환

    # 특정 투두 삭제
    def delete(self, request, pk, format=None):
        todos = self.get_object(pk)  # pk에 해당하는 객체를 반환
        todos.delete()  # 해당 객체 삭제
        return Response(status=status.HTTP_204_NO_CONTENT)  # 응답으로 204 응답