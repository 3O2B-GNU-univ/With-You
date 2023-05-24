from django.db import models
#  from users.models import User


# Create your models here.
class Memo(models.Model):
    id = models.AutoField(primary_key=True, null=False, blank=False)  # 게시글의 id
    # user_id = models.ForeignKey(User, null=True, blank=True, on_delete=models.CASCADE)  # 작성자
    title = models.CharField(max_length=100)  # 제목
    content = models.TextField()  # 내용
    created = models.DateTimeField(auto_now_add=True)  # 작성일
    pin_id = models.BooleanField(default=False)  # 고정핀
    room_id = models.IntegerField(default=0)  # 룸 id
    class Meta:
        ordering = ('created',)