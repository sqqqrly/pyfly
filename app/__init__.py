#!/usr/bin/env python3
import os
import sys

from flask import Flask
from flask_breadcrumbs import Breadcrumbs
from flask_basicauth import BasicAuth

application = Flask(__name__)

application.config['BASIC_AUTH_USERNAME'] = 'admin'
application.config['BASIC_AUTH_PASSWORD'] = 'admin'
basic_auth = BasicAuth(application)

# Initialize Flask-Breadcrumbs
Breadcrumbs(app=application)

from app import views
