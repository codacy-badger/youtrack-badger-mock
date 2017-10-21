from flask import Flask, make_response, url_for

__author__ = 'Stanislav'
__email__ = 'me@stas.pw'

app = Flask(__name__)


@app.route('/')
def hello_world():
    return """
    Mocked Jetbrains reply <a href="{0}">is here</a>
    """.format(url_for('get_releases_mock'))


@app.route('/products/releases')
def get_releases_mock():
    response = make_response(app.send_static_file('mocked_version.json'))
    response.content_type = 'application/json'
    return response, 200


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
