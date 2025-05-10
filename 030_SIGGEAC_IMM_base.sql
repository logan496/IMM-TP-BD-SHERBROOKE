-- ============================================
-- Script SQL complet pour le projet SIGGEAC IMM
-- Complète les rôles, utilisateurs et permissions
-- Conforme au TP INFO323 (modularité & contrôle d'accès)
-- ============================================

-- === Création des rôles applicatifs ===
CREATE ROLE consultation;
CREATE ROLE modification;
CREATE ROLE admin;

-- === Création des rôles usagers par portée d'accès ===
CREATE ROLE etudiant_dossier;
CREATE ROLE etudiant_evaluation;
CREATE ROLE professeur_dossier;
CREATE ROLE professeur_affectation;
CREATE ROLE offre_service;

-- === Création des utilisateurs (si non déjà présents) ===
CREATE USER imm_etudiant PASSWORD 'etudiant';
CREATE USER imm_professeur PASSWORD 'professeur';
CREATE USER imm_administrateur PASSWORD 'admin';

-- === Attribution des rôles applicatifs ===
GRANT consultation TO imm_etudiant;
GRANT modification TO imm_professeur;
GRANT admin TO imm_administrateur;

-- === Attribution des rôles usagers ===
GRANT etudiant_dossier TO imm_etudiant;
GRANT etudiant_evaluation TO imm_etudiant;
GRANT professeur_dossier TO imm_professeur;
GRANT professeur_affectation TO imm_professeur;
GRANT offre_service TO imm_administrateur;

-- ============================================
-- Permissions
-- ============================================


-- Permissions fines (consultation, modification)
-- Exemple : le rôle etudiant_dossier peut consulter les dossiers étudiants
GRANT SELECT ON etudiants.etudiant TO etudiant_dossier;
GRANT SELECT, INSERT, UPDATE ON etudiants.evaluation TO etudiant_evaluation;

GRANT SELECT ON professeurs.affectation TO professeur_affectation;
GRANT SELECT ON professeurs.affectation TO professeur_dossier;
GRANT SELECT, INSERT ON offre_service.cours TO offre_service;

-- Les rôles usagers sont inclus dans les rôles applicatifs
GRANT etudiant_dossier, etudiant_evaluation TO consultation;
GRANT professeur_dossier, professeur_affectation TO modification;
GRANT offre_service TO admin;

-- Attribution finale des rôles aux utilisateurs (enchaîné)
-- Exemple : imm_etudiant hérite via consultation de tous les droits nécessaires
GRANT consultation TO imm_etudiant;
GRANT modification TO imm_professeur;
GRANT admin TO imm_administrateur;

-- ============================================
