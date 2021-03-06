from django.contrib.auth.models import User
from django.db import models

# Create your models here.
from articleapp.models import Article


class Comment(models.Model):
    article = models.ForeignKey(Article, on_delete=models.SET_NULL, null=True, related_name='comment')
    author = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, related_name='comment')
    content = models.TextField(null=False)
    created_on = models.DateTimeField(auto_now=True)
