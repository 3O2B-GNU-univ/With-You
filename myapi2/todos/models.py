from django.db import models
#  from users.models import User


# Create your models here.
class Todos(models.Model):
    id = models.AutoField(primary_key=True, null=False, blank=False)  # 투두의 id
    # user = models.ForeignKey(User, null=True, blank=True, on_delete=models.CASCADE)  # 작성자
    content = models.CharField(max_length=100)  # 투두 내용
    created = models.DateTimeField(auto_now_add=True)  # 작성일
    room_id = models.IntegerField(default=0)  # 룸 id

    class Meta:
        ordering = ('created',)