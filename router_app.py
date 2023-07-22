from flask import Flask, request, jsonify
from flask_cors import CORS
from models.model_productos import *
 
app = Flask(__name__)
cors = CORS(app)



# Crea la tabla si no existe
def initialize_tables():
    Productos.create_table()

# Llamar a la función para inicializar las tablas
initialize_tables()

@app.route("/")  # Si me pides /
def hello_root():
    return '<h1>Probando el back</h1>'

@app.route("/productos", methods=['GET'])  # Si me pides /productos con GET
def get_productos():
    productos = Productos.get_all_productos()
    # Aquí debes procesar la lista de productos y devolverla como una respuesta adecuada, por ejemplo:
    return productos

@app.route("/productos/<producto_id>", methods=['GET'])  # Si me pides /productos/ALGO con GET
def get_producto(producto_id):
    producto = Productos.get_producto_by_id(producto_id)
    if producto:
        return jsonify(producto)
    else:
        # Si no se encuentra el producto, puedes devolver un mensaje de error o una respuesta vacía
        return jsonify({'message': 'Producto no encontrado'})

@app.route("/productos", methods=["POST"])  # Si me pides /productos con POST
def create_producto():
    data = request.get_json()
    print('**create_producto', data)
    Productos.post_producto(data)
    response = {'message': 'Producto created successfully'}
    return jsonify(response), 200

@app.route("/productos/<producto_id>", methods=["PUT"])
def update_producto(producto_id):
    data = request.get_json()
    print('**update_producto', data)
    result = Productos.put_producto(data, producto_id)
    if isinstance(result, str):
        return jsonify({"message": result})
    else:
        return jsonify({"message": "Producto updated successfully"})

@app.route("/productos/<producto_id>", methods=["PATCH"])
def patch_producto(producto_id):
    data = request.get_json()
    result = Productos.patch_producto(data, producto_id)
    if isinstance(result, str):
        return jsonify({"message": result})
    else:
        return jsonify({"message": "Producto updated successfully"})

@app.route("/productos/<producto_id>", methods=['DELETE'])  # Si me pides /productos/ALGO con DELETE
def delete_producto(producto_id):
    Productos.delete_productos(producto_id)
    response = {'message': 'Producto deleted successfully'}
    return jsonify(response), 200
