# language: fr
Fonctionnalité: Créer une randonnée (commande createHike)
  Un organisateur certifié crée une randonnée sur un sentier de la CCN.
  La randonnée n'est acceptée que si toutes les règles de planification du club sont respectées.

  Contexte:
    Étant donné un organisateur "org-1" avec une adhésion active
    Et une certification valide jusqu'au "2027-06-30" et un niveau d'organisateur "difficile"
    Et le sentier "Sentier Wolf" de difficulté "modéré", ouvert "toute l'année", où la randonnée est permise

  Scénario: Une randonnée valide est créée et ouverte
    Quand l'organisateur crée la randonnée "Boucle d'automne" sur "Sentier Wolf" le "2026-11-14" à "09:00", d'une durée de "3h", avec une date limite d'inscription le "2026-11-07" et une capacité de 12
    Alors une nouvelle randonnée est enregistrée avec un identifiant unique
    Et son statut est "OUVERTE"
    Et l'historique indique que "org-1" l'a ouverte

  Scénario: La date limite est plus de deux semaines avant la randonnée
    Quand l'organisateur crée une randonnée le "2026-11-30" avec une date limite d'inscription le "2026-11-01"
    Alors la création est refusée avec le motif "date limite trop tôt"
    Et aucune randonnée n'est enregistrée

  Scénario: La certification expire avant la date de la randonnée
    Quand l'organisateur crée une randonnée sur "Sentier Wolf" le "2027-08-15"
    Alors la création est refusée avec le motif "certification expirée à la date de la randonnée"

  Scénario: Le sentier est plus difficile que le niveau de l'organisateur
    Étant donné le sentier "Crête King" de difficulté "très difficile"
    Quand l'organisateur crée une randonnée sur "Crête King"
    Alors la création est refusée avec le motif "niveau d'organisateur insuffisant"

  Scénario: La date tombe hors de la saison d'ouverture du sentier
    Étant donné le sentier "Piste de ski 24" ouvert seulement en "hiver"
    Quand l'organisateur crée une randonnée sur "Piste de ski 24" le "2026-07-10"
    Alors la création est refusée avec le motif "hors saison"
