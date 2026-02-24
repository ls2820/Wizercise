from flask import Flask
from pymongo import MongoClient
import os
app = Flask(__name__)
@app.route('/')
def hello():
    with open('wizexercise.txt', 'r') as f:
        file_content = f.read()
    mongo_ip = os.environ.get('MONGO_URI')
    try:
        client = MongoClient(f"mongodb://{mongo_ip}:27017/", serverSelectionTimeoutMS=2000)
        client.admin.command('ping')
        db_status = 'Successfully connected to MongoDB!'
    except Exception as e:
        db_status = f'Connection to MongoDB failed: {str(e)}'
    return f'<h1>Wiz Exercise</h1><p>{db_status}</p><p><b>File content:</b> {file_content}</p>'
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
