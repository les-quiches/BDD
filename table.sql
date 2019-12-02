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
