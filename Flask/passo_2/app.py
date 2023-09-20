from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return "Hello, Flask!"

@app.route('/greet/<name>')
def greet(name):
    return f"Hello, {name}!"

@app.route('/quadrado/<int:q>')
def quadrado(q):
    return f"Square of {q} is, {q*q}!"

if __name__ == '__main__':
    app.run(debug=True)