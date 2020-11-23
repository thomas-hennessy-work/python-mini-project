from flask import Flask
import requests
app = Flask(__name__)
api = 'http://localhost:5001'

@app.route('/')
def index():
    animal = requests.get(api + '/animal')
    sound = requests.post(api + '/noise/' + animal)
    return("the " + animal + " goes " + sound)

if __name__ == '__main__':
    app.run(port=5000, debug=True, host='0.0.0.0')
