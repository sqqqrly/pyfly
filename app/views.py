#!/usr/bin/env python3
import os
from random import choice

from flask import render_template, redirect, url_for, request, Markup
from flask_breadcrumbs import register_breadcrumb
from flask_basicauth import BasicAuth
from app import application, basic_auth

def choose_a_name():
    """ A name generator. """
    names = ['Bill', 'Nolan', 'Kudla', 'Jeff', 'Mike', 'Chuck', 'David']
    name = choice(names)
    return name

def render_home_page():
    """ Utility function to render the home page.  """
    a_name = choose_a_name()
    contents = f'<h3>Hello {a_name}</h3>'
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


