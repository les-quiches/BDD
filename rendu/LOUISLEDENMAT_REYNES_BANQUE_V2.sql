CREATE TABLE AGENCES(
  id_agence INTEGER NOT NULL PRIMARY KEY,
  nom_agence TEXT,
  numero INTEGER,
  ville TEXT,
  telephone VARCHAR(20) DEFAULT '0000000000',
  url TEXT
);

CREATE TABLE CLIENTS(
  id_client INTEGER NOT NULL PRIMARY KEY,
  nom_client VARCHAR(20),
  prenom_client VARCHAR(20),
  adresse VARCHAR(20),
  telephone VARCHAR(20) DEFAULT '0000000000'
);

CREATE TABLE COMPTES(
  id_compte INTEGER NOT NULL PRIMARY KEY,
  date_creation VARCHAR(20),
  numero VARCHAR(20),
  type VARCHAR(20),
  solde REAL,
  id_client INTEGER NOT NULL,
  id_agence INTEGER NOT NULL,
  FOREIGN KEY (id_client) REFERENCES CLIENTS(id_client),
  FOREIGN KEY (id_agence) REFERENCES AGENCES(id_agence)
);

CREATE TABLE OPERATIONS(
  id_operation INTEGER NOT NULL PRIMARY KEY,
  id_emeteur INTEGER NOT NULL,
  id_recepteur INTEGER NOT NULL,
  montant REAL NOT NULL,
  date_transaction VARCHAR(20),
  lieu VARCHAR(20),
  type TEXT,
  FOREIGN KEY (id_recepteur) REFERENCES COMPTES(id_compte),
  FOREIGN KEY (id_emeteur) REFERENCES COMPTES(id_compte)
);


INSERT INTO AGENCES(id_agence,nom_agence,numero,ville,telephone,url) VALUES (1,'ENIBAR',56978134,'Plouzane','02 89 52 38 19','enib.net');
INSERT INTO AGENCES(id_agence,nom_agence,numero,ville,telephone,url) VALUES (2,'Progeliance',37089163,'Plouzane','02 63 19 37 12','progeliance.labanque.fr');
INSERT INTO AGENCES(id_agence,nom_agence,numero,ville,telephone,url) VALUES (3,'Bankal',123456,'Creuse','04 76 23 19 37','cestouquonest.fr');
INSERT INTO AGENCES(id_agence,nom_agence,numero,ville,telephone,url) VALUES (4,'Planque-Tune',99672198,'Lausane','(+41)54 757 8978','biengarder.su');
INSERT INTO CLIENTS(id_client,nom_client,prenom_client,adresse,telephone) VALUES (1,'Alfonsi','Antoine','Plouzane','07 70 27 43 98');
INSERT INTO CLIENTS(id_client,nom_client,prenom_client,adresse,telephone) VALUES (2,'Vanilla','Clyde','Creuse','07 00 02 32 10');
INSERT INTO CLIENTS(id_client,nom_client,prenom_client,adresse,telephone) VALUES (3,'Archiford','Auguste','Plouzane','07 42 69 34 72');
INSERT INTO CLIENTS(id_client,nom_client,prenom_client,adresse,telephone) VALUES (4,'Mikoto','Billy','Brest','06 37 29 36 25');
INSERT INTO CLIENTS(id_client,nom_client,prenom_client,adresse,telephone) VALUES (5,'Le Meillleur','Joseph','Lausane','06 67 28 02 83');
INSERT INTO CLIENTS(id_client,nom_client,prenom_client,adresse,telephone) VALUES (6,'Daniel','Antoine','Perdu','07 62 19 40 37');
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (1,'25/10/1999',43561258,'courant','35,95',1,1);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (2,'26/10/1999',64579418,'courant','1,1',1,2);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (3,'27/10/1999',44561135,'courant','1,1',1,3);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (4,'28/10/1999',99413244,'courant','1,1',1,4);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (5,'25/12/2008',12121341,'courant','-5,7',2,3);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (6,'25/12/2009',10000024,'epargne','29,99',2,3);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (7,'12/1/1961',10000000,'courant','12824,69',3,1);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (8,'01/01/1950',42698535,'epargne','4221087,69',3,4);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (9,'26/05/1982',33131545,'courant','12,2',4,2);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (10,'26/05/1982',84486521,'epargne','350,4',4,2);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (11,'30/8/2003',19995025,'courant','122,3',5,1);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (12,'12/1/1961',10000001,'courant','254,3',6,1);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (13,'18/3/1939',19856476,'epargne','843267,5',6,4);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (14,'01/01/2016',65214569,'courant','34256,4',6,3);
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (1,5,3,305.7,'10/01/2009','Creuse','virement');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (2,3,3,-305.7,'11/01/2009','Creuse','retrait');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (3,5,5,300.7,'25/12/2008','Creuse','depot');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (4,1,1,-58.4,'26/12/2008','ENIBAR','retrait');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (5,2,2,-756.1,'27/12/2008','Plouzane','retrait');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (6,4,4,-27.4,'28/12/2008','Lausane','retrait');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (7,7,7,77.7,'29/12/2008','ENIBAR','depot');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (8,5,7,55,'30/12/2008','Creuse','virement');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (9,6,6,0.01,'31/12/2008','Creuse','depot');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (10,7,14,42.69,'1/1/2009','Plouzane','virement');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (11,8,7,10000,'2/1/2009','lausane','virement');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (12,9,5,13.7,'3/1/2009','Plouzane','virement');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (13,10,10,54.8,'4/1/2009','Brest','depot');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (14,11,11,48.9,'5/1/2009','lausane','depot');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (15,12,12,-500,'6/1/2009','ENIBAR','retrait');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (16,13,12,500,'7/1/2009','Brest','virement');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (17,14,7,42.69,'8/1/2009','lausane','virement');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (18,10,2,250,'9/1/2009','brest','virement');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (19,13,2,250,'10/1/2009','Plouzane','virement');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (20,2,2,500,'11/1/2009','lausane','retrait');


SELECT * FROM AGENCES;
SELECT * FROM CLIENTS;
SELECT * FROM COMPTES;
SELECT * FROM OPERATIONS;


SELECT *
 FROM COMPTES JOIN CLIENTS,AGENCES ON (COMPTES.id_client=CLIENTS.id_client AND COMPTES.id_agence = AGENCES.id_agence);

SELECT telephone
 FROM clients
 WHERE nom_client = 'Alfonsi' AND prenom_client = 'Antoine';


SELECT url
 FROM agences
 WHERE nom_agence='Bankal';


SELECT co.numero
 FROM comptes co NATURAL JOIN clients cl
 WHERE cl.nom_client='Archiford' AND cl.prenom_client = 'Auguste';

SELECT id_operation,montant
 FROM OPERATIONS;


SELECT *
 FROM OPERATIONS op JOIN CLIENTS cl, AGENCES ag,COMPTES co
 ON (co.id_client = cl.id_client AND co.id_agence = ag.id_agence AND co.id_compte = op.id_emeteur)
 UNION
 SELECT *
 FROM OPERATIONS op JOIN CLIENTS cl, AGENCES ag,COMPTES co
 ON (co.id_client = cl.id_client AND co.id_agence = ag.id_agence AND co.id_compte = op.id_recepteur);
