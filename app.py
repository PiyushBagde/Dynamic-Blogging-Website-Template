from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
import json


with open("templates/config.json", 'r') as c:
    params = json.load(c)["params"]

local_server = True

app = Flask(__name__)

if local_server:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']


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
    return render_template('index.html', params=params)


@app.route('/about')
def about():
    return render_template('about.html', params=params)


@app.route('/post')
def post():  # put application's code here
    return render_template('post.html', params=params)


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

    return render_template('contact.html', params=params)


if __name__ == "__main__":
    app.run(debug=True)
