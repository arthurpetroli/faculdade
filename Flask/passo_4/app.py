from flask import Flask, render_template, request, redirect, url_for, flash
from flask_sqlalchemy import SQLAlchemy
import os

app = Flask(__name__)
#app.config['SQLALCHEMY_DATABASE_URI'] = "sqlite:///C:\\Users\\fabiopereira\\Downloads\\curso_flask\\passo_5\\mydatabase.db"
app.config['SQLALCHEMY_DATABASE_URI'] = "sqlite:///.\\mydatabase.db"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.secret_key = 'your_secret_key'  # Replace with a secure secret key

db = SQLAlchemy(app)

class Book(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100), nullable=False)
    author = db.Column(db.String(100), nullable=False)

with app.app_context():
    db.create_all()

@app.route('/')
def index():
    books = Book.query.all()
    return render_template('index.html', books=books)

@app.route('/add_book', methods=['POST'])
def add_book():
    if request.method == 'POST':
        title = request.form['title']
        author = request.form['author']
        if title and author:
            new_book = Book(title=title, author=author)
            db.session.add(new_book)
            db.session.commit()
            flash('Book added successfully', 'success')
        else:
            flash('Both title and author are required', 'danger')
    return redirect(url_for('index'))

@app.route('/delete_book/<int:id>', methods=['GET'])
def delete_book(id):
    book = db.one_or_404(db.select(Book).filter_by(id=id))
    db.session.delete(book)
    db.session.commit()
    #print(f"delete {id} {book.author}" , file = sys.stderr)
    return redirect('/')

if __name__ == '__main__':
    app.run(debug=True)
