import json
from time import sleep

from flask import jsonify, request
from app import app
from app.context import analyze_text

@app.route('/')
@app.route('/index',)
def index():
    response = jsonify({"test": "hi"})
    response.headers.add('Access-Control-Allow-Origin', '*')
    return response

@app.route('/context', methods=['POST'])
def context():
    print(request)
    request_data = request.get_json()
    print(request_data)
    text = request_data["text"]
    response = jsonify({"results": analyze_text(text)})
    response.headers.add('Access-Control-Allow-Origin', '*')
    response.headers.add("Access-Control-Allow-Headers", "Access-Control-Allow-Origin, Accept")
    return response