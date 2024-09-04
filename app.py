from flask import Flask, render_template

app = Flask(__name__)

@main.route("/")
def home_page():
    return render_template('gradient.html')
if __name__ == '__main__':
   app.run(host='0.0.0.0')
