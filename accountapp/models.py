from django.db import models

# Create your models here.
#디비에 선언

class NewModel(models.Model):
    text = models.CharField(max_length=255, null=False)
