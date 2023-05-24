from memo.models import Memo
from memo.serializers import MemoSerializer
from django.http import Http404
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response


class MemoList(APIView):  # 목록에 대한 view
    #  메모 조회
    def get(self, request, format=None):
        memo = Memo.objects.all()  # 메모의 모든 객체를
        serializer = MemoSerializer(memo, many=True)  # 시리얼라이즈 해서
        return Response(serializer.data)  # 응답으로 시리얼라이즈 데이터를 반환

    # 메모 생성
    def post(self, request, format=None):
        serializer = MemoSerializer(data=request.data)
        if serializer.is_valid():  # 시리얼라이즈가 유효하면
            serializer.save()  # 저장한 뒤
            return Response(serializer.data, status=status.HTTP_201_CREATED)  # 응답으로 201상태와 시리얼라이즈 데이터를 반환
        return Response(serializer.error, status=status.HTTP_400_BAD_REQUEST)  # 유효하지 않으면 404 에러를 반환


class MemoDetail(APIView):  # 특정 객체에 대한 view
    def get_object(self, pk):
        try:
            return Memo.objects.get(pk=pk)  # pk에 해당하는 메모 객체를 반환
        except Memo.DoesNotExist:  # 없으면 404에러 반환
            return Http404

    # 특정 메모 조회
    def get(self, request, pk, format=None):
        memo = self.get_object(pk)  # pk에 해당하는 객체를 반환
        serializer = MemoSerializer(memo)  # 이를 시리얼라이즈하여
        return Response(serializer)  # 시리얼라이즈 데이터를 반환

    # 특정 메모 수정
    def put(self, request, pk, format=None):
        memo = self.get_object(pk)  # pk에 해당하는 객체를 반환
        serializer = MemoSerializer(memo, data=request.data)  # 해당 객체를 요청받은 데이터로 시리얼라이즈
        if serializer.is_valid():  # 시리얼라이즈가 유효하면
            serializer.save()  # 저장
            return Response(serializer.data)  # 반환
        return Response(serializer.error, status=status.HTTP_400_BAD_REQUEST)  # 아니면 400에러 반환

    # 특정 메모 삭제
    def delete(self, request, pk, format=None):
        memo = self.get_object(pk)  # pk에 해당하는 객체를 반환
        memo.delete()  # 해당 객체 삭제
        return Response(status=status.HTTP_204_NO_CONTENT)  # 응답으로 204 응답