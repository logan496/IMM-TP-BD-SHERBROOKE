-- === 000_SIGGEAC_ini.sql : Initialisation de l’environnement SIGGEAC ===

-- Suppression préalable des schémas si existants (cascade pour tout effacer)
DROP SCHEMA IF EXISTS etudiants CASCADE;
CREATE SCHEMA etudiants;

DROP SCHEMA IF EXISTS professeurs CASCADE;
CREATE SCHEMA professeurs;

DROP SCHEMA IF EXISTS offre_service CASCADE;
CREATE SCHEMA IF offre_service;


-- Suppression des vues IMM
DROP VIEW IF EXISTS IMM_etudiant CASCADE;
DROP VIEW IF EXISTS IMM_professeur CASCADE;
DROP VIEW IF EXISTS IMM_offre CASCADE;

-- Suppression des rôles (dans l'ordre inverse d'attribution)
DROP ROLE IF EXISTS offre_role;
DROP ROLE IF EXISTS affectation_role;
DROP ROLE IF EXISTS prof_role;
DROP ROLE IF EXISTS eval_role;
DROP ROLE IF EXISTS etudiant_role;

DROP ROLE IF EXISTS lecteur;
DROP ROLE IF EXISTS modificateur;
DROP ROLE IF EXISTS complet;

-- Suppression des domaines personnalisés
DROP DOMAIN IF EXISTS uuid_pk CASCADE;
DROP DOMAIN IF EXISTS matricule CASCADE;
DROP DOMAIN IF EXISTS nom CASCADE;
DROP DOMAIN IF EXISTS prenom CASCADE;
DROP DOMAIN IF EXISTS sigle_cours CASCADE;
DROP DOMAIN IF EXISTS sigle_module CASCADE;
DROP DOMAIN IF EXISTS credit CASCADE;
DROP DOMAIN IF EXISTS note_sur_100 CASCADE;
DROP DOMAIN IF EXISTS cycle CASCADE;
DROP DOMAIN IF EXISTS session CASCADE;