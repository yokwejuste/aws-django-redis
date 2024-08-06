from django.http import JsonResponse

from crons.tasks import add


def index(request):
    return JsonResponse({"message": "Hello world, your Django App is Running"})


def add_view(request):
    result = add.delay(4, 6)
    return JsonResponse({'task_id': result.id})
