import sqlite3
from flask import jsonify
# import jwt
# from datetime import datetime
# from gestor_jwt import token_required

DATABASE = "mi_bd_singluten.sqlite"

class Productos:
    def __init__(self, id, texto, img, nombre, icono, color):
        self.id = id
        self.texto = texto
        self.img = img
        self.nombre = nombre
        self.icono = icono
        self.color = color

    @classmethod
    def create_table(cls):
        conn = sqlite3.connect(DATABASE)
        cursor = conn.cursor()

        try:
            cursor.execute('''CREATE TABLE IF NOT EXISTS
            "gluten_free" (
                "id" INTEGER NOT NULL UNIQUE,
                "texto" TEXT,
                "img" TEXT,
                "Nombre" TEXT,
                "icono" TEXT,
                "color" TEXT,
                PRIMARY KEY("id" AUTOINCREMENT)
            );''')
            conn.commit()
        except sqlite3.Error as e:
            print(f"Error creating table: {e}")
        finally:
            cursor.close()
            conn.close()

    @classmethod
    def post_producto(cls, gluten_free_item):
        try:
            conn = sqlite3.connect(DATABASE)
            c = conn.cursor()
            c.execute('''INSERT INTO gluten_free (texto, img, Nombre, icono, color)
                         VALUES (?, ?, ?, ?, ?)''',
                      (gluten_free_item["texto"], gluten_free_item["img"], gluten_free_item["Nombre"],
                       gluten_free_item["icono"], gluten_free_item["color"]))
            conn.commit()
            return jsonify({'message': 'gluten_free item created successfully'}), 200
        except sqlite3.Error as e:
            return jsonify({"Error": str(e)}), 500
        finally:
            conn.close()

    @classmethod
    def get_producto_by_id(cls, gluten_free_id):
        try:
            conn = sqlite3.connect(DATABASE)
            c = conn.cursor()
            c.execute("SELECT * FROM gluten_free WHERE id=?", (gluten_free_id,))
            result = c.fetchone()
            if result:
                gluten_free_item = {
                    "id": result[0],
                    "texto": result[1],
                    "img": result[2],
                    "Nombre": result[3],
                    "icono": result[4],
                    "color": result[5]
                }
                return gluten_free_item
        except sqlite3.Error as e:
            return jsonify({"Error": str(e)}), 500
        finally:
            conn.close()

    @classmethod
    def get_all_productos(cls):
        conn = sqlite3.connect(DATABASE)
        try:
            c = conn.cursor()
            c.execute("SELECT * FROM gluten_free")
            results = c.fetchall()
            gluten_free_items = []
            for result in results:
                gluten_free_item = {
                    "id": result[0],
                    "texto": result[1],
                    "img": result[2],
                    "Nombre": result[3],
                    "icono": result[4],
                    "color": result[5]
                }
                gluten_free_items.append(gluten_free_item)
            return gluten_free_items

        except sqlite3.Error as e:
            return jsonify({"Error": str(e)}), 500
        finally:
            conn.close()

    @classmethod
    def put_producto(cls, data, gluten_free_id):
        conn = sqlite3.connect(DATABASE)
        try:
            c = conn.cursor()
            c.execute('''UPDATE gluten_free SET texto=?, img=?, Nombre=?, icono=?, color=?
                         WHERE id=?''',
                      (data['texto'], data['img'], data['Nombre'], data['icono'], data['color'], gluten_free_id))
            conn.commit()
            return None  # Sin errores, no se devuelve nada
        except sqlite3.Error as e:
            return str(e)  # Devuelve el mensaje de error como una cadena
        finally:
            conn.close()

    @classmethod
    def delete_productos(cls, gluten_free_id):
        conn = sqlite3.connect(DATABASE)
        try:
            c = conn.cursor()
            c.execute("DELETE FROM gluten_free WHERE id=?", (gluten_free_id,))
            conn.commit()
        except sqlite3.Error as e:
            return jsonify({"Error": str(e)}), 500
        finally:
            conn.close()
