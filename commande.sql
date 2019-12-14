
--Trouver le numéro de téléphone d’une personne (Alfonsi, Antoine) particulière.;
SELECT telephone
 FROM clients
 WHERE nom_client = 'Alfonsi' AND prenom_client = 'Antoine';

--l’URL d’une agence (Bankal) .;
SELECT url
 FROM agences
 WHERE nom_agence='Bankal';

--Trouver les comptes bancaires d’une personne particulière (Archiford, Auguste);
SELECT co.numero
 FROM comptes co NATURAL JOIN clients cl
 WHERE cl.nom_client='Archiford' AND cl.prenom_client = 'Auguste';

--Trouver les virements fait par une personne particulière(6) entre ses propres comptes.;
CREATE VIEW T1 AS
 SELECT *
   FROM OPERATIONS op JOIN COMPTES co
   ON (co.id_compte = op.id_emeteur)
   GROUP BY id_operation;

CREATE VIEW T2 AS
 SELECT *
   FROM OPERATIONS op JOIN COMPTES co
   ON (co.id_compte = op.id_recepteur)
   GROUP BY id_operation;

SELECT T1.id_operation
 FROM T1 JOIN T2
 ON (T1.id_operation = T2.id_operation AND T1.id_client=T2.id_client AND T1.type=T2.type)
 WHERE (T1.id_client=6 AND T1.type='virement');

DROP VIEW IF EXISTS T1;
DROP VIEW IF EXISTS T2;

--Le nom(n) prenom(m) des personnes clientes chez une agence particulière (1);
SELECT nom_client, prenom_client
 FROM COMPTES co JOIN CLIENTS cl ON (co.id_client= cl.id_client)
 WHERE id_agence = 1;

--Les personnes(id) qui ont des comptes dans toutes les agences.;
SELECT DISTINCT id_client
 FROM COMPTES c1
 WHERE NOT EXISTS (
 SELECT *
   FROM AGENCES a
   WHERE NOT EXISTS ( SELECT *
     FROM COMPTES c2
     WHERE c1.id_client = c2.id_client AND c2.id_agence = a.id_agence )
);

--Le capital total d’une personne (3)  (l’argent dans tous ses comptes).;
SELECT sum(solde)
 FROM COMPTES
 WHERE id_client = 3;

--Le nombre d’opérations faites par une agence(1) ces deux dernières années.;
SELECT count(id_operation)
 FROM COMPTES co JOIN OPERATIONS op ON (op.id_emeteur = co.id_client)
 WHERE id_agence = 1;

--Les Opération classé par le montant.;
SELECT montant,id_operation
 FROM OPERATIONS
 GROUP BY montant;

--Le nombre d’agences par ville.;
SELECT ville,count(id_agence)
 FROM AGENCES
 GROUP BY ville;

--Les comptes par agence ayant leur solde dans le négatif.;
SELECT id_compte,id_agence
 FROM COMPTES
 WHERE solde < 0
 GROUP BY id_agence
