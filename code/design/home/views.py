from django.shortcuts import render
from base.views import ActiveStatus


def index(request):
    active_status = ActiveStatus()
    active_status.set_homepage()

    args = {
        'active_status': active_status,
    }
    return render(request, 'home/home.html', args)
