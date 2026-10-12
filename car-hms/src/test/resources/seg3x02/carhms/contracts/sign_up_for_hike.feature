# language: fr
Fonctionnalité: S'inscrire à une randonnée (commande signUpForHike)
  Un randonneur actif s'inscrit à une randonnée de son niveau ou d'un niveau au-dessus.

  Contexte:
    Étant donné un randonneur "rando-1" de niveau "intermédiaire" avec une adhésion active
    Et une randonnée "h-1" de difficulté "difficile" au statut "OUVERTE" avec une capacité de 2

  Scénario: Il reste des places
    Étant donné que la randonnée "h-1" a 0 inscription confirmée
    Quand "rando-1" s'inscrit à la randonnée "h-1"
    Alors une inscription "CONFIRMÉE" est créée pour "rando-1" avec l'heure de l'inscription
    Et la randonnée "h-1" reste "OUVERTE"
    Et un courriel de confirmation est envoyé à "rando-1"

  Scénario: Le randonneur prend la dernière place
    Étant donné que la randonnée "h-1" a 1 inscription confirmée
    Quand "rando-1" s'inscrit à la randonnée "h-1"
    Alors une inscription "CONFIRMÉE" est créée pour "rando-1"
    Et la randonnée "h-1" devient "COMPLÈTE"
    Et l'historique indique que "rando-1" l'a rendue complète

  Scénario: La randonnée est complète
    Étant donné que la randonnée "h-1" est "COMPLÈTE" avec 1 inscription en liste d'attente
    Quand "rando-1" s'inscrit à la randonnée "h-1"
    Alors une inscription "EN_ATTENTE" est créée en position 2
    Et un courriel indiquant la position 2 est envoyé à "rando-1"

  Scénario: La randonnée est trop difficile
    Étant donné une randonnée "h-2" de difficulté "très difficile" au statut "OUVERTE"
    Quand "rando-1" s'inscrit à la randonnée "h-2"
    Alors l'inscription est refusée avec le motif "niveau insuffisant"

  Scénario: L'adhésion n'est pas active
    Étant donné que l'adhésion de "rando-1" est "SUSPENDUE"
    Quand "rando-1" s'inscrit à la randonnée "h-1"
    Alors l'inscription est refusée avec le motif "adhésion non active"

  Scénario: Le randonneur est déjà inscrit
    Étant donné que "rando-1" a déjà une inscription "CONFIRMÉE" à la randonnée "h-1"
    Quand "rando-1" s'inscrit à la randonnée "h-1"
    Alors l'inscription est refusée avec le motif "déjà inscrit"
