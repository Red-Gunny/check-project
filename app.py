from flask import Flask

app = Flask(__name__)
from flask import Flask


app = Flask(__name__)                  # Flask 어플리케이션 인스턴스를 생성한다.


@app.route('/')
def hello_world():  # put application's code here
    return 'Hello World!'


if __name__ == '__main__':
    app.run('')
