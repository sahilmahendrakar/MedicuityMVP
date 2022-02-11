import json
from time import sleep

from flask import jsonify
from app import app

@app.route('/')
@app.route('/index')
def index():
    response = jsonify({"test": "hi"})
    response.headers.add('Access-Control-Allow-Origin', '*')
    return response

