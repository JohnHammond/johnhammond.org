#!/usr/bin/env python

from flask import Flask
from flask import render_template
# from flask import *

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/programming')
def programming():
    return render_template('programming.html')

@app.route('/writeups')
def writeups():
    return render_template('writeups.html')


if ( __name__ == "__main__" ):
	app.run( debug=True, threaded = True )