BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "gluten_free" (
	"id"	INTEGER,
	"texto"	TEXT,
	"img"	TEXT,
	"Nombre"	TEXT,
	"icono"	TEXT,
	"color"	TEXT
);
INSERT INTO "gluten_free" VALUES (1,'Muy recomendable 100%','https://images.openfoodfacts.org/images/products/506/033/563/5808/front_fr.62.200.jpg','Monster Energy Ultra - 500 ml','https://static.openfoodfacts.org/images/attributes/no-gluten.svg','verde');
INSERT INTO "gluten_free" VALUES (2,'Muy recomendable 100%','https://images.openfoodfacts.org/images/products/761/010/008/8056/front_en.71.200.jpg','Nesquik - Nestlé - 1 kg','https://static.openfoodfacts.org/images/attributes/no-gluten.svg','verde');
INSERT INTO "gluten_free" VALUES (3,'Muy recomendable 100%','https://images.openfoodfacts.org/images/products/301/762/042/2003/front_es.445.200.jpg','Nutella - Ferrero - 400 g','https://static.openfoodfacts.org/images/attributes/no-gluten.svg','verde');
INSERT INTO "gluten_free" VALUES (4,'Muy recomendable 100%','https://images.openfoodfacts.org/images/products/541/118/811/2709/front_es.396.200.jpg','Almond No Sugars - Alpro - 1 l','https://static.openfoodfacts.org/images/attributes/no-gluten.svg','verde');
INSERT INTO "gluten_free" VALUES (5,'Muy recomendable 100%','https://images.openfoodfacts.org/images/products/541/118/810/3387/front_es.187.200.jpg','Alpro vainilla - 500 g','https://static.openfoodfacts.org/images/attributes/no-gluten.svg','verde');
INSERT INTO "gluten_free" VALUES (6,'Muy recomendable 100%','https://images.openfoodfacts.org/images/products/87157215/front_es.169.200.jpg','Ketchup - Heinz - 250 g','https://static.openfoodfacts.org/images/attributes/no-gluten.svg','verde');
INSERT INTO "gluten_free" VALUES (7,'Muy recomendable 100%','https://images.openfoodfacts.org/images/products/848/000/003/8524/front_es.73.200.jpg','Guacamole - Hacendado - 200g','https://static.openfoodfacts.org/images/attributes/no-gluten.svg','verde');
INSERT INTO "gluten_free" VALUES (8,'Muy recomendable 100%','https://images.openfoodfacts.org/images/products/20095291/front_es.133.200.jpg','Chocolate negro Ecuador 70% cacao - J.D. Gross - 125g','https://static.openfoodfacts.org/images/attributes/no-gluten.svg','verde');
INSERT INTO "gluten_free" VALUES (9,'Muy recomendable 100%','https://images.openfoodfacts.org/images/products/20150907/front_es.115.200.jpg','Arándanos deshidratados - Alesto - 200 g','https://static.openfoodfacts.org/images/attributes/no-gluten.svg','verde');
INSERT INTO "gluten_free" VALUES (10,'Muy recomendable 100%','https://images.openfoodfacts.org/images/products/807/680/951/3722/front_es.878.200.jpg','Basilico - Barilla - 400 g','https://static.openfoodfacts.org/images/attributes/no-gluten.svg','verde');
INSERT INTO "gluten_free" VALUES (11,'Poca informacion 20%','https://images.openfoodfacts.org/images/products/324/541/380/8196/front_fr.66.200.jpg','Pesto verde - Carrefour - 190 g','https://static.openfoodfacts.org/images/attributes/may-contain-gluten.svg','naranja');
INSERT INTO "gluten_free" VALUES (12,'Poca informacion 20%','https://images.openfoodfacts.org/images/products/541/118/811/0835/front_es.382.200.jpg','Leche de almendras tostadas - Alpro - 1 L','https://static.openfoodfacts.org/images/attributes/may-contain-gluten.svg','naranja');
INSERT INTO "gluten_free" VALUES (13,'Poca informacion 20%','https://images.openfoodfacts.org/images/products/871/410/063/5650/front_es.153.200.jpg','mini Almond - Magnum - 330 ml / 276 g','https://static.openfoodfacts.org/images/attributes/may-contain-gluten.svg','naranja');
INSERT INTO "gluten_free" VALUES (14,'poca informacion 20%','https://images.openfoodfacts.org/images/products/848/000/029/1349/front_es.18.200.jpg','Harina integral de trigo - Hacendado - 1 kg','https://static.openfoodfacts.org/images/attributes/may-contain-gluten.svg','naranja');
INSERT INTO "gluten_free" VALUES (15,'Poca informacion 20%','https://images.openfoodfacts.org/images/products/842/320/720/1315/front_es.24.200.jpg','Tortitas de Maíz - Bicentury - 130 g','https://static.openfoodfacts.org/images/attributes/may-contain-gluten.svg','naranja');
INSERT INTO "gluten_free" VALUES (16,'Poca informacion 20%','https://images.openfoodfacts.org/images/products/84117205/front_es.30.200.jpg','Batido de chocolate - Puleva - 200 ml','https://static.openfoodfacts.org/images/attributes/may-contain-gluten.svg','naranja');
INSERT INTO "gluten_free" VALUES (17,'sin informacion suficiente','https://images.openfoodfacts.org/images/products/841/012/801/0225/front_es.17.200.jpg','Leche desnatada 0% - Pascual - 1 litro','https://static.openfoodfacts.org/images/attributes/gluten-content-unknown.svg','gris');
INSERT INTO "gluten_free" VALUES (18,'sin informacion suficiente','https://images.openfoodfacts.org/images/products/14126008/front_es.22.200.jpg','pan sin gluten - Bimbo - 450 g','https://static.openfoodfacts.org/images/attributes/gluten-content-unknown.svg','gris');
INSERT INTO "gluten_free" VALUES (19,'sin informacion suficiente','https://images.openfoodfacts.org/images/products/405/648/925/8353/front_en.51.200.jpg','High Protein Joghurterzeugnis Himbeere-Granatapfel - Milbona - 200g','https://static.openfoodfacts.org/images/attributes/gluten-content-unknown.svg','gris');
INSERT INTO "gluten_free" VALUES (20,'sin informacion suficiente','https://images.openfoodfacts.org/images/products/90162800/front_en.97.200.jpg','RedBull Sugarfree - Red Bull - 250ml','https://static.openfoodfacts.org/images/attributes/gluten-content-unknown.svg','gris');
INSERT INTO "gluten_free" VALUES (21,'Sin informacion suficiente','https://images.openfoodfacts.org/images/products/871/570/040/7760/front_es.150.200.jpg','Ketchup ecológico - Heinz - 580 g','https://static.openfoodfacts.org/images/attributes/gluten-content-unknown.svg','gris');
INSERT INTO "gluten_free" VALUES (22,'sin informacion suficiente','https://images.openfoodfacts.org/images/products/544/900/001/1527/front_es.215.200.jpg','Fanta naranja - 330 ml','https://static.openfoodfacts.org/images/attributes/gluten-content-unknown.svg','gris');
INSERT INTO "gluten_free" VALUES (23,'No Recomendable','https://images.openfoodfacts.org/images/products/800/050/000/3787/front_es.172.200.jpg','Ferrero Rocher - 200 g','https://static.openfoodfacts.org/images/attributes/contains-gluten.svg','rojo');
INSERT INTO "gluten_free" VALUES (24,'No Recomendable','https://images.openfoodfacts.org/images/products/400/172/481/9905/front_es.147.200.jpg','Ristorante: Pizza vegetale - Dr. Oetker - 385 g','https://static.openfoodfacts.org/images/attributes/contains-gluten.svg','rojo');
INSERT INTO "gluten_free" VALUES (25,'No Recomendable','https://images.openfoodfacts.org/images/products/338/739/032/6574/front_fr.315.200.jpg','Cookie Crisp - 375 g','https://static.openfoodfacts.org/images/attributes/contains-gluten.svg','rojo');
INSERT INTO "gluten_free" VALUES (26,'No Recomendable','https://images.openfoodfacts.org/images/products/871/503/511/0106/front_es.197.200.jpg','Salsa de soja - Kikkoman - 150 ml','https://static.openfoodfacts.org/images/attributes/contains-gluten.svg','rojo');
INSERT INTO "gluten_free" VALUES (27,'No Recomendable','https://images.openfoodfacts.org/images/products/841/007/647/0812/front_es.116.200.jpg','Wraps integrales de trigo - Old El Paso - 350 g','https://static.openfoodfacts.org/images/attributes/contains-gluten.svg','rojo');
INSERT INTO "gluten_free" VALUES (28,'No Recomendable','https://images.openfoodfacts.org/images/products/800/050/003/7560/front_es.199.200.jpg','Kinder Bueno - 43g','https://static.openfoodfacts.org/images/attributes/contains-gluten.svg','rojo');
COMMIT;