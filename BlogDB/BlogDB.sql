-- //insertion

INSERT INTO Commentaire (Contenu, Date_commentaire, ID_article, ID_utilisateur)
VALUES ('Contenu du commentaire', '2024-04-29', 1, 1);

INSERT INTO Article (Titre, Contenu, Date_publication, ID_utilisateur, ID_categorie)
VALUES ('Titre de l''article', 'Contenu de l''article', '2024-04-29', 1, 1);

INSERT INTO Utilisateur (Nom_utilisateur, Email, Mot_de_passe, ID_role)
VALUES ('nom_utilisateur', 'exemple@email.com', 'mot_de_passe', 1);

INSERT INTO Categorie (Nom_categorie, parent_categorie)
VALUES ('Nom_de_la_categorie', 1);


-- //modification

UPDATE Utilisateur
SET Email = 'new_email@example.com'
WHERE ID_utilisateur = 1;

UPDATE Categorie
SET Nom_categorie = 'New Category Name'
WHERE ID_categorie = 1;


-- //suprimer

drop table utilisateur
drop table categories
...

-- //la Selection 

select * from utilisateur

select * from Article 

SELECT ID_categorie, Nom_categorie
FROM Categorie;

SELECT *
FROM Categorie
WHERE ID_categorie > 1;
