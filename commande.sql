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
