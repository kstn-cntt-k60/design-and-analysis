from django.shortcuts import render
from django.db import connection
from base.views import ActiveStatus


def index(request):
    lang = "english"
    if 'lang' in request.COOKIES:
        lang = request.COOKIES['lang']

    if 'name' not in request.session:
        request.session['name'] = "Tạ Quang Tùng"
    name = request.session['name']

    cursor = connection.cursor()
    cursor.execute('SELECT name FROM Privilege')

    privileges = []
    for row in cursor:
        privileges.append(row[0])

    active_status = ActiveStatus()
    args = {
        'lang': lang,
        'name': name,
        'privileges': privileges,
        'active_status': active_status,
    }
    response = render(request, 'login/login.html', args)
    response.set_cookie('lang', lang)
    return response
