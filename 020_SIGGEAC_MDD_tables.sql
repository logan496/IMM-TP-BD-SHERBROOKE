-- === 020_SIGGEAC_MDD_tables.sql : Tables du modèle SIGGEAC inspiré de l'université ===

-- Schéma : etudiants
CREATE TABLE etudiants.etudiant (
    id uuid_pk PRIMARY KEY,
    matricule matricule UNIQUE,
    nom nom NOT NULL,
    prenom prenom NOT NULL,
    date_naissance DATE NOT NULL,
    cycle cycle NOT NULL
);

CREATE TABLE etudiants.inscription (
    id uuid_pk PRIMARY KEY,
    etudiant_id uuid_pk REFERENCES etudiants.etudiant(id),
    annee INT CHECK (annee >= 2000),
    session session NOT NULL,
    programme TEXT NOT NULL
);

CREATE TABLE etudiants.evaluation (
    id uuid_pk PRIMARY KEY,
    inscription_id uuid_pk REFERENCES etudiants.inscription(id),
    cours_code sigle_cours NOT NULL,
    note note_sur_100 NOT NULL
);

-- Schéma : professeurs
CREATE TABLE professeurs.professeur (
    id uuid_pk PRIMARY KEY,
    nom nom NOT NULL,
    prenom prenom NOT NULL,
    specialite TEXT NOT NULL
);

CREATE TABLE professeurs.affectation (
    id uuid_pk PRIMARY KEY,
    professeur_id uuid_pk REFERENCES professeurs.professeur(id),
    cours_code sigle_cours NOT NULL,
    annee INT CHECK (annee >= 2000),
    session session NOT NULL
);

-- Schéma : offre_service
CREATE TABLE offre_service.module (
    sigle sigle_module PRIMARY KEY,
    titre TEXT NOT NULL,
    credit credit NOT NULL
);

CREATE TABLE offre_service.cours (
    code sigle_cours PRIMARY KEY,
    module_sigle sigle_module REFERENCES offre_service.module(sigle),
    titre TEXT NOT NULL,
    credit credit NOT NULL
);

CREATE TABLE offre_service.salle (
    code TEXT PRIMARY KEY,
    capacite INT CHECK (capacite > 0)
);

CREATE TABLE offre_service.groupe (
    id uuid_pk PRIMARY KEY,
    cours_code sigle_cours REFERENCES offre_service.cours(code),
    enseignant_id uuid_pk REFERENCES professeurs.professeur(id),
    salle TEXT REFERENCES offre_service.salle(code)
);