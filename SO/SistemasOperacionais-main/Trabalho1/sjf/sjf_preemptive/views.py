from django import forms
from django.shortcuts import render

from . import util
import random

# Create your views here.

class NewPageText(forms.Form):
    title = forms.CharField(label="Tittle: ")
    text = forms.CharField(widget=forms.Textarea(attrs={'name':'text', 'rows':10, 'cols':80}), label="Text: ")

def index(request):
    return render(request, "sjf_preemptive/index.html", {
        "entries": util.list_entries()
    })

def entry(request, pk):
    fileContent = util.get_entry(pk)
    if fileContent == None: # Error: page not found
        return render(request, "sjf_preemptive/error.html", {
            "pagePath": request.build_absolute_uri(),
            "aux": 0,
            "titlePage": pk
        })
    processList, originalProcess = util.sortProcess(fileContent)
    if True in (lista.CPUtime < 0 or lista.arrivalTime < 0 for lista in originalProcess):
        return render(request, "sjf_preemptive/error.html", {
            "pagePath": request.build_absolute_uri(),
            "aux": 1,
            "titlePage": pk
        })
    completionTime = util.calculateCompletionTime(processList)
    responseTime, totalResponse = util.calculateResponseTime(originalProcess, completionTime)
    totalWaiting = util.calculateWaitingTime(originalProcess, responseTime)

    return render(request, "sjf_preemptive/entry.html", {
        "data": processList,
        "titlePage": pk,
        "range": range(1000),
        "process": originalProcess,
        "tmr": totalResponse,
        "tme": totalWaiting,
    })

def edit(request, pk):
    if request.method == "POST":
        form = NewPageText(request.POST)
        if form.is_valid():
            title = form.cleaned_data.get('title')
            text = form.cleaned_data.get('text')
            util.save_entry(title, text)
            return entry(request, title)
        else:
            return render(request, "sjf_preemptive/edit.html", {
                "title": "Edit Page",
                "form": NewPageText(data)
            })
    entryContent = util.read_all_file(pk)
    data = {"title": pk, "text": entryContent }
    return render(request, "sjf_preemptive/edit.html", {
        "title": "Edit Page",
        "titlePage": pk,
        "form": NewPageText(data)
    })

def create(request):
    if request.method == "POST":
        form = NewPageText(request.POST)
        if form.is_valid():
            title = form.cleaned_data.get('title')
            text = form.cleaned_data.get('text')
            searchEqual = list(filter(lambda x: title in x, util.list_entries()))
            if searchEqual == []:
                util.save_entry(title, text)
                return entry(request, title)
            else:
                return render(request, "sjf_preemptive/create.html", {
                "title": "Error",
                "form": form
            })
        else:
            return render(request, "sjf_preemptive/create.html", {
                "title": "Create New Page",
                "form": form
            })
    return render(request, "sjf_preemptive/create.html", {
        "title": "Create New Page",
        "form": NewPageText
    })