#!/usr/bin/env python3
import os

from flask import render_template, redirect, url_for, request, Markup
from flask_breadcrumbs import register_breadcrumb
from flask_basicauth import BasicAuth
from app import application, basic_auth

def generate_a_name():
    """ A name generator. """
    names = ['Bill', 'Nolan', 'Kudla', 'Mike', 'Chuck', 'David']
    i = 0
    while True:
        yield names[i]
        i += 1

name = generate_a_name()

def render_home_page():
    """ Utility function to render the home page.  """
    global name
    try:
        contents = 'Hello {}'.format(next(name))
    except IndexError:
        name = generate_a_name()
        contents = 'Hello {}'.format(next(name))
    return render_template('home.html', contents=contents, auto_refresh=True)

def render_fly_page():
    """ Utility function to render the fly page. """
    contents = "Hello flies"
    return render_template('fly.html', contents=contents, auto_refresh=True)

@application.route("/")
@application.route("/home")
@register_breadcrumb(application, '.', 'Home')
def home():
    """ View function to render the home page. """
    return render_home_page()

@application.route("/fly")
@register_breadcrumb(application, '.', 'fly')
def fly():
    """ View function to render the fly page. """
    return render_fly_page()


if __name__ == "__main__":
    application.run()


