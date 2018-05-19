from django.shortcuts import render


class Tung:
    name = "quang tung"
    age = "21"


def index(request):
    numbers = [1, 2, 3, 4, 5]
    name = "ta quang tung"
    tung = Tung()

    args = {"name": name, "numbers": numbers, "tung": tung}

    return render(request, 'login/login.html', args)
