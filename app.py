from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return undefined_variable  # This will raise a NameError
