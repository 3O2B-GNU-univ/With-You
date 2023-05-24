from memo.models import Memo
from rest_framework import serializers

#  데이터 JSON 형식화


class MemoSerializer(serializers.HyperlinkedModelSerializer):
    id = serializers.IntegerField(read_only=True)
    title = serializers.IntegerField(read_only=True)
    content = serializers.CharField()
    created = serializers.ReadOnlyField()
    pin_id = serializers.BooleanField(initial=False)
    room_id = serializers.IntegerField(default=0)

    def create(self, validated_data):
        return Memo.objects.create(**validated_data)

    def update(self, instance, validated_data):
        instance.title = validated_data.get('title', instance.title)
        instance.content = validated_data.get('content', instance.content)
        instance.save()
        return instance

    class Meta:
        model = Memo
        fields = ('id', 'title', 'content', 'created')
