from flask import Flask
import threading
import math

app = Flask(__name__)
LOAD_RUNNING=0

def cpu_load():
    while True:
        for i in range(1000000):
            print(math.sqrt(i ** 2))

@app.route('/health')
def health():
    return "OK"

@app.route('/load')
def load():
    global LOAD_RUNNING
    if LOAD_RUNNING==0:
        LOAD_RUNNING = 1
        for _ in range(2):
            threading.Thread(target=cpu_load).start()
        return "load started"
    return "load already started"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
