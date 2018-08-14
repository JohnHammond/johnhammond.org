#!/usr/bin/env python

from flask import Flask
from flask import render_template
# from flask import *

app = Flask(__name__)


@app.errorhandler(404)
def page_not_found(e): return render_template('custom_errors/custom_404.html'), 404

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/google571b7db071ec7f44.html')
def adsbygoogle(): return render_template('google571b7db071ec7f44.html')

@app.route('/programming')
def programming(): return render_template('programming.html')

@app.route('/writeups')
def writeups(): return render_template('writeups.html')

@app.route('/voice_acting')
def voice_acting(): return render_template('voice_acting.html')

@app.route('/graphic_design')
def graphic_design(): return render_template('graphic_design.html')


if ( __name__ == "__main__" ):
	app.run( debug=True, threaded = True )