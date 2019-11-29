INSERT INTO AGENCES(id_agence,nom_agence,numero,ville,telephone,url) VALUES (1,'ENIBAR',56978134,'Plouzane','02 89 52 38 19','enib.net');
INSERT INTO AGENCES(id_agence,nom_agence,numero,ville,telephone,url) VALUES (2,'Progeliance',37089163,'Plouzane','02 63 19 37 12','progeliance.labanque.fr');
INSERT INTO AGENCES(id_agence,nom_agence,numero,ville,telephone,url) VALUES (3,'Argent-Perdu',000123456,'Creuse','04 76 23 19 37','cestouquonest.fr');
INSERT INTO AGENCES(id_agence,nom_agence,numero,ville,telephone,url) VALUES (4,'Cache-money',99672198,'Lausane','(+41)54 757 8978','biengarder.su');

INSERT INTO CLIENTS(id_client,nom_client,prenom_client,adresse,telephone) VALUES (1,'Alfonci','Antoine','Plouzane','07 70 27 43 98');
INSERT INTO CLIENTS(id_client,nom_client,prenom_client,adresse,telephone) VALUES (2,'Vanilla','Clyde','Creuse','07 00 02 32 10');
INSERT INTO CLIENTS(id_client,nom_client,prenom_client,adresse,telephone) VALUES (3,'Archiford','Auguste','Plouzane','07 42 69 53 72');
INSERT INTO CLIENTS(id_client,nom_client,prenom_client,adresse,telephone) VALUES (4,'Mikoto','Billy','Brest','06 37 29 36 25');
INSERT INTO CLIENTS(id_client,nom_client,prenom_client,adresse,telephone) VALUES (5,'le meilleur','Joseph','Lausane','06 67 28 02 83');
INSERT INTO CLIENTS(id_client,nom_client,prenom_client,adresse,telephone) VALUES (6,'Daniel','Antoine','Perdu','07 62 19 40 37');

INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (1,'25/10/1999','43561258','courant',35.95,1,1);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (2, '26/10/1999', '64579418', 'courant', 1.1, 1, 2);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (3, '27/10/1999', '44561135', 'courant', 1.1, 1, 3);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (4, '28/10/1999', '99413244', 'courant', 1.1, 1, 4);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (5, '25/12/2008', '12121341', 'courant', -5.7, 2, 3);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (6, '25/12/2009', '10000024', 'epargne', 29.99, 2, 3);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (7, '12/1/1961', '10000000', 'courant', 12824.69, 3, 1);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (8, '01/01/1950', '42698535', 'epargne', 4221087.69, 3, 4);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (9, '26/05/1982', '33131545', 'courant', 12.2, 4, 2);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (10, '26/05/1982', '84486521', 'epargne', 350.4, 4, 2);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (11, '30/8/2003', '19995025', 'courant', 122.3, 5, 1);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (12, '12/1/1961', '10000001', 'courant', 254.3, 6, 1);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (13, '18/3/1939', '19856476', 'epargne', 843267.5, 6, 4);
INSERT INTO COMPTES(id_compte,date_creation,numero,type,solde,id_client,id_agence) VALUES (14, '01/01/2016', '65214569', 'courant', 34256.4, 6, 3);

INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (1,5,3,305.7,'10/01/2009','Creuse','virement');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (2, 3, 3, -305.7, '11/01/2009', 'Creuse', 'retrait');
INSERT INTO OPERATIONS(id_operation,id_emeteur,id_recepteur,montant,date_transaction,lieu,type) VALUES (3, 5, 5, 300.7, '25/12/2008', 'Creuse', 'depot');
