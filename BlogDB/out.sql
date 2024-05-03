PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Utilisateur (
    ID_utilisateur INTEGER PRIMARY KEY,
    Nom_utilisateur varchar,
    Email varchar,
    Mot_de_passe varchar,
    ID_role INTEGER,
    FOREIGN KEY (ID_role) REFERENCES Role(ID_role)
);
INSERT INTO Utilisateur VALUES(1,'vesir','salma@gmail.com','*****',NULL);
CREATE TABLE Role (
    ID_role INTEGER PRIMARY KEY,
    Nom_role varchar
);
CREATE TABLE Categorie (
    ID_categorie INTEGER PRIMARY KEY,
    Nom_categorie varchar,
    parent_categorie INTEGER,
    FOREIGN KEY (parent_categories) REFERENCES Categorie(ID_categorie)
);
INSERT INTO Categorie VALUES(1,'Technologie',NULL);
INSERT INTO Categorie VALUES(2,'Science',NULL);
CREATE TABLE Article (
    ID_article INTEGER PRIMARY KEY,
    Titre varchar,
    Contenu varchar,
    Date_publication DATE,
    ID_utilisateur INTEGER,
    ID_categorie INTEGER,
    FOREIGN KEY (ID_utilisateur) REFERENCES Utilisateur(ID_utilisateur),
    FOREIGN KEY (ID_categorie) REFERENCES Categorie(ID_categorie)
);
INSERT INTO Article VALUES(1,'Titre de l''article','Contenu de l''article','2024-04-29',1,1);
INSERT INTO Article VALUES(2,'Titre de l''article','Contenu de l''article','2023-02-29',2,2);
CREATE TABLE Commentaire (
    ID_commentaire INTEGER PRIMARY KEY,
    Contenu varchar,
    Date_commentaire DATE,
    ID_article INTEGER,
    ID_utilisateur INTEGER,
    FOREIGN KEY (ID_article) REFERENCES Article(ID_article),
    FOREIGN KEY (ID_utilisateur) REFERENCES Utilisateur(ID_utilisateur)
);
INSERT INTO Commentaire VALUES(1,'Contenu du commentaire','2024-04-29',1,1);
COMMIT;




