from flask import Flask, render_template, url_for, request, render_template, jsonify, redirect
import json
from flask_cors import CORS, cross_origin
from model_loader import *


app = Flask(__name__)

# API
@app.route('/')
def index():
    return "Hello world"

@app.route('/getResult', methods=['POST'])
def getResult():
    jObject = request.json
    results = getResultFromModel(jObject['data'])
    return jsonify({'result':results})


if __name__ == "__main__":
    app.run(debug=True)