from flask import Flask, jsonify
app = Flask(__name__)


@app.route('/aaa')
def index():
    user = {'aaa': 'a', 'bbb': 'b', 'ccc': 'c'}
    return jsonify(user)


if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True)
