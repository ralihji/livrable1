# language: fr
Fonctionnalité: Annuler une randonnée (commande cancelHike)
  L'organisateur d'une randonnée, ou un administrateur, l'annule avant son début en donnant un motif.

  Contexte:
    Étant donné une randonnée "h-1" organisée par "org-1", qui n'a pas commencé
    Et "rando-1" a une inscription "CONFIRMÉE" à "h-1"
    Et "rando-2" a une inscription "EN_ATTENTE" à "h-1"

  Scénario: L'organisateur annule sa randonnée
    Quand "org-1" annule la randonnée "h-1" avec le motif "Alerte de tempête"
    Alors le statut de "h-1" est "ANNULÉE"
    Et l'historique indique que "org-1" l'a annulée
    Et les inscriptions de "rando-1" et "rando-2" sont "ANNULÉE"
    Et "rando-1" et "rando-2" reçoivent un courriel avec le motif "Alerte de tempête"

  Scénario: Un administrateur annule la randonnée d'un autre
    Quand l'administrateur "admin-1" annule la randonnée "h-1" avec le motif "Sentier fermé par la CCN"
    Alors le statut de "h-1" est "ANNULÉE"
    Et l'historique indique que "admin-1" l'a annulée

  Scénario: Un autre organisateur ne peut pas l'annuler
    Quand "org-2" annule la randonnée "h-1" avec le motif "Erreur"
    Alors l'annulation est refusée avec le motif "accès non autorisé"

  Scénario: La randonnée a déjà commencé
    Étant donné que la randonnée "h-1" a commencé
    Quand "org-1" annule la randonnée "h-1" avec le motif "Trop tard"
    Alors l'annulation est refusée avec le motif "randonnée déjà commencée"

  Scénario: Le motif est obligatoire
    Quand "org-1" annule la randonnée "h-1" sans motif
    Alors l'annulation est refusée avec le motif "motif requis"
