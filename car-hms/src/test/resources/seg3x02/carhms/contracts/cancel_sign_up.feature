# language: fr
Fonctionnalité: Annuler une inscription (commande cancelSignUp)
  Un randonneur se retire d'une randonnée avant la date limite d'inscription.

  Scénario: Une place confirmée revient au premier de la liste d'attente
    Étant donné une randonnée "h-1" au statut "COMPLÈTE" dont la date limite n'est pas passée
    Et "rando-1" a une inscription "CONFIRMÉE" à "h-1"
    Et "rando-2" est premier en liste d'attente pour "h-1"
    Quand "rando-1" annule son inscription à "h-1"
    Alors l'inscription de "rando-1" est "ANNULÉE"
    Et l'inscription de "rando-2" devient "CONFIRMÉE"
    Et un courriel est envoyé à "rando-2" pour l'informer
    Et la randonnée "h-1" reste "COMPLÈTE"

  Scénario: Sans liste d'attente, la randonnée redevient ouverte
    Étant donné une randonnée "h-1" au statut "COMPLÈTE" sans liste d'attente
    Et "rando-1" a une inscription "CONFIRMÉE" à "h-1"
    Quand "rando-1" annule son inscription à "h-1"
    Alors l'inscription de "rando-1" est "ANNULÉE"
    Et la randonnée "h-1" redevient "OUVERTE"

  Scénario: Annuler une inscription en liste d'attente
    Étant donné que "rando-3" est deuxième en liste d'attente pour "h-1"
    Quand "rando-3" annule son inscription à "h-1"
    Alors l'inscription de "rando-3" est "ANNULÉE"
    Et les positions des suivants avancent d'un rang

  Scénario: La date limite est passée
    Étant donné une randonnée "h-4" au statut "FERMÉE"
    Et "rando-1" a une inscription "CONFIRMÉE" à "h-4"
    Quand "rando-1" annule son inscription à "h-4"
    Alors l'annulation est refusée avec le motif "date limite passée"
