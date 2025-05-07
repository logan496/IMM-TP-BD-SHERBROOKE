-- === 030_SIGGEAC_IMM_base.sql : Interfaces IMM (vues + droits) ===

-- IMM_etudiant : accès lecture aux données personnelles et résultats
CREATE OR REPLACE VIEW IMM_etudiant AS
SELECT
    e.id AS etudiant_id,
    e.matricule,
    e.nom,
    e.prenom,
    e.cycle,
    i.annee,
    i.session,
    i.programme,
    ev.cours_code,
    ev.note
FROM etudiants.etudiant e
JOIN etudiants.inscription i ON e.id = i.etudiant_id
LEFT JOIN etudiants.evaluation ev ON i.id = ev.inscription_id;

GRANT SELECT ON IMM_etudiant TO etudiant_role;

-- IMM_professeur : accès lecture/écriture sur affectations
CREATE OR REPLACE VIEW IMM_professeur AS
SELECT
    p.id AS professeur_id,
    p.nom,
    p.prenom,
    p.specialite,
    a.cours_code,
    a.annee,
    a.session
FROM professeurs.professeur p
JOIN professeurs.affectation a ON p.id = a.professeur_id;

GRANT SELECT, UPDATE ON IMM_professeur TO affectation_role;

-- IMM_offre : accès complet sur les cours/modules
CREATE OR REPLACE VIEW IMM_offre AS
SELECT
    c.code AS cours_code,
    c.titre AS cours_titre,
    c.credit,
    m.sigle AS module_sigle,
    m.titre AS module_titre,
    m.credit AS module_credit
FROM offre_service.cours c
JOIN offre_service.module m ON c.module_sigle = m.sigle;

GRANT SELECT, INSERT, UPDATE, DELETE ON IMM_offre TO offre_role;