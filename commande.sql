SELECT * FROM AGENCES;
SELECT * FROM CLIENTS;
SELECT * FROM COMPTES;
SELECT * FROM OPERATIONS;

SELECT prenom_client,nom_client,id_compte,id_client
 FROM COMPTES NATURAL JOIN CLIENTS;
SELECT id_operation,id_recepteur,id_emeteur
 FROM OPERATIONS
 WHERE type = 'virement';
