BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "categories" (
	"id"	INTEGER,
	"nom"	TEXT NOT NULL UNIQUE,
	"description"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "produits" (
	"id"	INTEGER,
	"nom"	TEXT NOT NULL,
	"prix"	REAL NOT NULL CHECK("prix" >= 0),
	"quantite"	INTEGER NOT NULL DEFAULT 0 CHECK("quantite" >= 0),
	"disponible"	INTEGER NOT NULL DEFAULT 1,
	"date_ajout"	TEXT NOT NULL,
	"categorie_id"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("categorie_id") REFERENCES "categories"("id") ON DELETE RESTRICT
);
INSERT INTO "categories" VALUES (1,'Informatique','Materiel informatique');
INSERT INTO "categories" VALUES (2,'Bureau','Fournitures de bureau');
INSERT INTO "categories" VALUES (3,'Accessoires','Accessoires divers');
INSERT INTO "produits" VALUES (1,'Clavier',45.5,10,1,'2026-10-30',1);
INSERT INTO "produits" VALUES (2,'Souris',25.0,15,1,'2026-10-30',1);
INSERT INTO "produits" VALUES (3,'Stylo',2.5,100,1,'2026-10-30',2);
INSERT INTO "produits" VALUES (4,'Cahier',4.0,50,1,'2026-10-30',2);
INSERT INTO "produits" VALUES (5,'Casque',80.0,0,0,'2026-10-30',3);
COMMIT;
