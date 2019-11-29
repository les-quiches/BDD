SELECT * FROM AGENCES;
SELECT nom_client FROM CLIENTS WHERE adresse ='Plouzane';
SELECT id_compte,prenom_client,nom_client,nom_agence FROM COMPTES NATURAL JOIN CLIENTS,AGENCES 
