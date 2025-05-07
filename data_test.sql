-- === PHASE 4 : Jeu de données enrichi pour le modèle Université ===
-- Etudiants
INSERT INTO etudiants.etudiant VALUES ('9ceffc87-c27f-45b9-9d31-452985bf819e', 'IC2020', 'Riou', 'Frédéric', '1998-10-08', 'Licence');
INSERT INTO etudiants.etudiant VALUES ('9282d2f8-158b-4d26-b934-72c99cb2eb70', 'IC2000', 'Traore', 'Robert', '2002-07-05', 'Master');
INSERT INTO etudiants.etudiant VALUES ('926ec4f9-8f33-45b5-904e-7e047e07b7ff', 'IC2007', 'Hubert', 'Guillaume', '2000-02-01', 'Licence');
INSERT INTO etudiants.etudiant VALUES ('6d3a87a1-c51b-4793-a2ee-5cd0487108d9', 'IC2004', 'Labbé', 'Nicole', '1999-10-28', 'Licence');
INSERT INTO etudiants.etudiant VALUES ('45c4379c-39c8-4d61-b751-6d62ce87e755', 'IC2021', 'Maury', 'Audrey', '1998-11-19', 'Licence');
INSERT INTO etudiants.etudiant VALUES ('9304fac1-9b6a-48dc-bcff-fdf446bc7724', 'IC2018', 'Martinez', 'Éric', '2002-01-23', 'Master');
INSERT INTO etudiants.etudiant VALUES ('6a349545-e698-4e0d-a0db-d9bb8f3caa9f', 'IC2001', 'Rey', 'Corinne', '1998-10-17', 'Licence');
INSERT INTO etudiants.etudiant VALUES ('4e582413-988b-4732-a69a-cfdff93de540', 'IC2002', 'Guilbert', 'Louis', '2005-06-24', 'Licence');
INSERT INTO etudiants.etudiant VALUES ('f9b58823-3bbc-4f8e-97be-6baa0503c4d6', 'IC2007', 'Vasseur', 'Caroline', '2003-01-28', 'Licence');
INSERT INTO etudiants.etudiant VALUES ('65809467-3819-4fc5-9810-f1d4bbdc0c18', 'IC2017', 'Robert', 'Patricia', '2001-01-22', 'Licence');

-- Inscriptions
INSERT INTO etudiants.inscription VALUES ('771b7db8-4b95-4a3f-a29b-81d78ed34e3d', (SELECT id FROM etudiants.etudiant OFFSET 8 LIMIT 1), 2024, 'Automne', 'Économie');
INSERT INTO etudiants.inscription VALUES ('7daefbb4-3f00-4918-9655-bcdd3388ad94', (SELECT id FROM etudiants.etudiant OFFSET 9 LIMIT 1), 2023, 'Automne', 'Informatique');
INSERT INTO etudiants.inscription VALUES ('7184edda-1910-41eb-a483-1524b2ffd377', (SELECT id FROM etudiants.etudiant OFFSET 6 LIMIT 1), 2023, 'Hiver', 'Informatique');
INSERT INTO etudiants.inscription VALUES ('d96dda30-dd7f-4cd4-94ab-10ad5cbbd4f0', (SELECT id FROM etudiants.etudiant OFFSET 3 LIMIT 1), 2023, 'Automne', 'Informatique');
INSERT INTO etudiants.inscription VALUES ('f43f4a31-d16d-4554-bdcf-acdc70f48aa3', (SELECT id FROM etudiants.etudiant OFFSET 6 LIMIT 1), 2021, 'Hiver', 'Économie');
INSERT INTO etudiants.inscription VALUES ('91758da4-25f5-495e-a560-00b8b3fb1da7', (SELECT id FROM etudiants.etudiant OFFSET 9 LIMIT 1), 2023, 'Automne', 'Droit');
INSERT INTO etudiants.inscription VALUES ('369af54a-231d-4799-af9f-aabd20be94ac', (SELECT id FROM etudiants.etudiant OFFSET 7 LIMIT 1), 2025, 'Automne', 'Économie');
INSERT INTO etudiants.inscription VALUES ('9c835b59-d357-4887-80e6-7398761b3702', (SELECT id FROM etudiants.etudiant OFFSET 1 LIMIT 1), 2025, 'Hiver', 'Droit');
INSERT INTO etudiants.inscription VALUES ('cedd4f93-d319-4a7d-be4f-5af72cd5ebe1', (SELECT id FROM etudiants.etudiant OFFSET 9 LIMIT 1), 2023, 'Automne', 'Droit');
INSERT INTO etudiants.inscription VALUES ('0830023e-8f26-49b4-a6f7-b1799927df0c', (SELECT id FROM etudiants.etudiant OFFSET 1 LIMIT 1), 2021, 'Automne', 'Économie');

-- Evaluations
INSERT INTO etudiants.evaluation VALUES ('8465353b-3f40-4ddc-bf09-157c626dcb2d', (SELECT id FROM etudiants.inscription OFFSET 1 LIMIT 1), 'MATH101', 56);
INSERT INTO etudiants.evaluation VALUES ('755424bd-218b-496b-aaf5-bc092c2f7351', (SELECT id FROM etudiants.inscription OFFSET 6 LIMIT 1), 'INFO301', 79);
INSERT INTO etudiants.evaluation VALUES ('f5c680e0-aaee-4a47-a0da-7279ec99fe92', (SELECT id FROM etudiants.inscription OFFSET 5 LIMIT 1), 'MATH101', 73);
INSERT INTO etudiants.evaluation VALUES ('c7828252-b2eb-41b8-b1f0-f732e1d44961', (SELECT id FROM etudiants.inscription OFFSET 5 LIMIT 1), 'MATH101', 92);
INSERT INTO etudiants.evaluation VALUES ('79b9fd16-7586-42ab-82d4-c4a98ad4b792', (SELECT id FROM etudiants.inscription OFFSET 4 LIMIT 1), 'ECO205', 93);
INSERT INTO etudiants.evaluation VALUES ('88a9bea0-e0ec-41bc-8394-d57dbc5c9cd0', (SELECT id FROM etudiants.inscription OFFSET 1 LIMIT 1), 'ECO205', 90);
INSERT INTO etudiants.evaluation VALUES ('bc97e447-5b20-4de3-83dd-856c311b9a4a', (SELECT id FROM etudiants.inscription OFFSET 2 LIMIT 1), 'ECO205', 65);
INSERT INTO etudiants.evaluation VALUES ('973bcfa0-1f06-44f5-afc8-66152950e047', (SELECT id FROM etudiants.inscription OFFSET 2 LIMIT 1), 'INFO301', 74);
INSERT INTO etudiants.evaluation VALUES ('9f8bd9c9-e1a0-4ff5-b32b-14e047a6f362', (SELECT id FROM etudiants.inscription OFFSET 4 LIMIT 1), 'ECO205', 94);
INSERT INTO etudiants.evaluation VALUES ('d8af9acf-d7f1-4b79-8f48-69ffb86ab6f1', (SELECT id FROM etudiants.inscription OFFSET 8 LIMIT 1), 'MATH101', 93);
INSERT INTO etudiants.evaluation VALUES ('88db8aae-5a7f-4919-a00b-711b0d3f92ad', (SELECT id FROM etudiants.inscription OFFSET 5 LIMIT 1), 'MATH101', 64);
INSERT INTO etudiants.evaluation VALUES ('b72bb35e-e2b0-48b6-805a-bead0a47e876', (SELECT id FROM etudiants.inscription OFFSET 0 LIMIT 1), 'INFO301', 75);
INSERT INTO etudiants.evaluation VALUES ('ae839787-6e83-44d8-a6b5-b60a0923430b', (SELECT id FROM etudiants.inscription OFFSET 4 LIMIT 1), 'MATH101', 63);
INSERT INTO etudiants.evaluation VALUES ('7562673e-0cab-4fbc-bc7c-cb9805a84212', (SELECT id FROM etudiants.inscription OFFSET 9 LIMIT 1), 'ECO205', 70);
INSERT INTO etudiants.evaluation VALUES ('9053f01f-69d8-49c3-9f7a-1c2e9f27ebbf', (SELECT id FROM etudiants.inscription OFFSET 3 LIMIT 1), 'ECO205', 81);

-- Professeurs
INSERT INTO professeurs.professeur VALUES ('fc80b26b-eda9-4fd4-a5df-2782d164298a', 'Rocher', 'Audrey', 'Informatique');
INSERT INTO professeurs.professeur VALUES ('2933be5c-e3fb-4874-b9cf-4b5f7c9f0e5a', 'Leblanc', 'Roger', 'Économie');
INSERT INTO professeurs.professeur VALUES ('91faff6c-e34c-445e-a944-d3935ea95985', 'Meyer', 'Martin', 'Informatique');
INSERT INTO professeurs.professeur VALUES ('ce9fa96a-99cf-46c3-993e-21e4e22b283a', 'Ledoux', 'Yves', 'Mathématiques');
INSERT INTO professeurs.professeur VALUES ('460a828c-a68c-44cd-b19d-85959c7f0f2c', 'Henry', 'Éric', 'Informatique');

-- Affectations
INSERT INTO professeurs.affectation VALUES ('334491ce-b349-4695-a729-1ec86bcb1330', (SELECT id FROM professeurs.professeur OFFSET 1 LIMIT 1), 'MATH101', 2024, 'Hiver');
INSERT INTO professeurs.affectation VALUES ('99a8eecb-3332-4c36-b465-2323c9f0ff15', (SELECT id FROM professeurs.professeur OFFSET 4 LIMIT 1), 'INFO301', 2024, 'Automne');
INSERT INTO professeurs.affectation VALUES ('f2949810-d421-4bf3-a178-a36c94af732b', (SELECT id FROM professeurs.professeur OFFSET 1 LIMIT 1), 'ECO205', 2025, 'Automne');
INSERT INTO professeurs.affectation VALUES ('2c7dcb4a-2370-4964-baf0-2573ce6c47d0', (SELECT id FROM professeurs.professeur OFFSET 0 LIMIT 1), 'MATH101', 2023, 'Automne');
INSERT INTO professeurs.affectation VALUES ('4a19e642-400a-4e40-a617-df60c28d497a', (SELECT id FROM professeurs.professeur OFFSET 3 LIMIT 1), 'ECO205', 2022, 'Hiver');
INSERT INTO professeurs.affectation VALUES ('925908fb-3ef3-4269-8d21-ee82da5a6ad4', (SELECT id FROM professeurs.professeur OFFSET 3 LIMIT 1), 'ECO205', 2025, 'Hiver');
INSERT INTO professeurs.affectation VALUES ('1b7ffb05-4602-499a-9dec-3c1224554345', (SELECT id FROM professeurs.professeur OFFSET 4 LIMIT 1), 'MATH101', 2022, 'Hiver');
INSERT INTO professeurs.affectation VALUES ('0e41ff4d-7d92-446d-855d-87bc3197a07c', (SELECT id FROM professeurs.professeur OFFSET 2 LIMIT 1), 'MATH101', 2024, 'Hiver');

-- Modules
INSERT INTO offre_service.module VALUES ('MATH11', 'Analyse I', 4);
INSERT INTO offre_service.module VALUES ('INFO31', 'Programmation Web', 5);
INSERT INTO offre_service.module VALUES ('ECO25', 'Microéconomie', 3);

-- Cours
INSERT INTO offre_service.cours VALUES ('MATH101', 'MATH11', 'Analyse I', 4);
INSERT INTO offre_service.cours VALUES ('INFO301', 'INFO31', 'Programmation Web', 5);
INSERT INTO offre_service.cours VALUES ('ECO205', 'ECO25', 'Microéconomie', 3);

-- Salles
INSERT INTO offre_service.salle VALUES ('B101', 40);
INSERT INTO offre_service.salle VALUES ('B102', 50);
INSERT INTO offre_service.salle VALUES ('B103', 40);

-- Groupes
INSERT INTO offre_service.groupe VALUES ('3f906dae-8548-4c23-ae23-fe256ba2227c', 'ECO205', (SELECT id FROM professeurs.professeur OFFSET 2 LIMIT 1), 'B103');
INSERT INTO offre_service.groupe VALUES ('1a8880c0-c96f-4954-8a3d-a32df007e67e', 'MATH101', (SELECT id FROM professeurs.professeur OFFSET 4 LIMIT 1), 'B101');
INSERT INTO offre_service.groupe VALUES ('acda923a-c9c5-43ee-9833-1b303d8b0dce', 'ECO205', (SELECT id FROM professeurs.professeur OFFSET 2 LIMIT 1), 'B103');
INSERT INTO offre_service.groupe VALUES ('b4a35339-1149-48b9-9614-7caf2d535c0f', 'ECO205', (SELECT id FROM professeurs.professeur OFFSET 4 LIMIT 1), 'B101');
INSERT INTO offre_service.groupe VALUES ('e250820f-c73d-4a27-a937-c8b4f6310531', 'MATH101', (SELECT id FROM professeurs.professeur OFFSET 2 LIMIT 1), 'B101');