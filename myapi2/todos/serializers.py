from rest_framework import serializers
from .models import Todos


class TodosSerializer(serializers.HyperlinkedModelSerializer):
    id = serializers.IntegerField(read_only=True)
    content = serializers.IntegerField(read_only=True)
    created = serializers.ReadOnlyField()

    def create(self, validated_data):
        return Todos.objects.create(**validated_data)

    def update(self, instance, validated_data):
        instance.content = validated_data.get('content', instance.content)
        instance.save()
        return instance

    class Meta:
        model = Todos
        fields = ('id', 'content', 'created')
