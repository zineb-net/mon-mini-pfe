from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Bienvenue sur mon PFE Sécurisé !"

if __name__ == '__main__':
    # On lance l'application sur le port 5000 et on la rend accessible (0.0.0.0)
    app.run(host='0.0.0.0', port=5000)