from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return "Hello, Flask!"

@app.route('/eduardo')
def dudu():
    return "Eduardo Yuji é gay!!"

if __name__ == '__main__':
    app.run(debug=True)
