#!/usr/bin/env python3
import os
from random import sample, randint

from flask import render_template, redirect, url_for, request, Markup
from flask_breadcrumbs import register_breadcrumb
from flask_basicauth import BasicAuth
from app import application, basic_auth

def choose_a_name():
    """ Returns a sampling of names of
    random length and order as comma-sep string.
    """
    names = ['Bill', 'Nolan', 'Kudla', 'Jeff', 'Mike', 'Chuck', 'David']
    count = randint(1, len(names))
    name_list = sample(names, k=count)
    #print(f'{count} --> {name_list}')
    name_str = ', '.join(name_list)
    return name_str

def render_home_page():
    """ Utility function to render the home page.  """
    a_name = choose_a_name()
    contents = '<h3>Hello {a_name}</h3>'.format(a_name=a_name)
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


