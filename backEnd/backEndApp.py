from flask import Flask, jsonify
import random
app = Flask(__name__)

animals = {'cow':'moo', 'dog':'woof', 'cat':'meow', 'sheep':'baaaa', 'tom':'AAAAAAAAAAA'}

@app.route('/animal')
def get_animal():
    return jsonify({'data':random.choice(list(animals))})

@app.route('/noise/<string:animal>', methods=['POST'])
def get_sound(animal):
    return jsonify({'data':animals[animal]})

if __name__ == '__main__':
    app.run(port=5001, host='0.0.0.0') 
