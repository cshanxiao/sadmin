#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.contrib.auth.decorators import login_required
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render_to_response, RequestContext

@login_required
def Home(request):
    return render_to_response('home.html', locals(), RequestContext(request))

def About(request):
    return render_to_response('about.html', locals(), RequestContext(request))
