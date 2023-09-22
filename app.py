from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/staythere'
db = SQLAlchemy(app)


class Contacts(db.Model):
    # sno, name, email, phone_num. message, date
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    phone_num = db.Column(db.String(12), nullable=False)
    message = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)
    email = db.Column(db.String(20), nullable=False)


@app.route('/')
def home():  # put application's code here
    return render_template('index.html')


@app.route('/about')
def about():
    return render_template('about.html')


@app.route('/post')
def post():  # put application's code here
    return render_template('post.html')


@app.route("/contact", methods=['GET', 'POST'])
def contact():
    if request.method == 'POST':
        # adding entry to the database
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        message = request.form.get('message')
        print(request.form)
        entry = Contacts(name=name, phone_num=phone, message=message, email=email, date=datetime.now())
        db.session.add(entry)
        db.session.commit()

    return render_template('contact.html')


if __name__ == "__main__":
    app.run(debug=True)
