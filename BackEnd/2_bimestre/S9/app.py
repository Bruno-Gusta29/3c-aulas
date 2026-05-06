#app
from flask import Flask
import json
from flask import jsonify
from flask import request

app = Flask(__name__)

def carregar():
    with open ("produtos.json") as f:
        return json.load(f)
    
def salvar(dados):
    with open ("produtos.json", "w") as f:
        return json.dump(dados, f, indent=2)

@app.route("/")
def home():
    return "Api Funcionando"

""""
@app.route("/produtos")
def listar():
    return jsonify(carregar())
"""
 
@app.route("/produtos", metodos=["POST"])
def adicionar():
    produtos= carregar()
    dados= request.get_json()

    novo ={
        "id":len(produtos)+1,
        "nome":dados["nome"]
    }

    produtos.append(novo)
    salvar(produtos)

    return novo

@app.route("/produtos/<int:id>", metodos=["DELETE"])
def deletar(id):
    produtos = carregar()
    for p in produtos:
        if p["id"] == id:
            produtos.remove(p)
            salvar(produtos)
            return{"msg": "removido"}
    return {"erro": "nao encontrado"}


app.run(debug=True)