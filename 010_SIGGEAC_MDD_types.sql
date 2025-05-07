-- === 010_SIGGEAC_MDD_types.sql : Types personnalisés stricts ===

-- Identifiants
CREATE DOMAIN uuid_pk AS UUID CHECK (VALUE IS NOT NULL);
CREATE DOMAIN matricule AS TEXT CHECK (VALUE ~ '^[A-Z]{2}[0-9]{4}$');

-- Chaînes typées
CREATE DOMAIN nom AS TEXT CHECK (char_length(VALUE) BETWEEN 2 AND 50);
CREATE DOMAIN prenom AS TEXT CHECK (char_length(VALUE) BETWEEN 2 AND 50);
CREATE DOMAIN sigle_cours AS TEXT CHECK (VALUE ~ '^[A-Z]{3,6}[0-9]{3}$');
CREATE DOMAIN sigle_module AS TEXT CHECK (VALUE ~ '^[A-Z]{3,6}[0-9]{3}$');

-- Numériques
CREATE DOMAIN credit AS INTEGER CHECK (VALUE BETWEEN 1 AND 10);
CREATE DOMAIN note_sur_100 AS INTEGER CHECK (VALUE BETWEEN 0 AND 100);

-- Catégories
CREATE DOMAIN cycle AS TEXT CHECK (VALUE IN ('Licence', 'Master', 'Doctorat'));
CREATE DOMAIN session AS TEXT CHECK (VALUE IN ('Automne', 'Hiver', 'Printemps', 'Été'));