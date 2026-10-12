# language: fr
Fonctionnalité: Fermer une randonnée (commande closeHike)
  À la date limite d'inscription, le système ferme la randonnée.

  Scénario: Une randonnée ouverte est fermée à la date limite
    Étant donné une randonnée "h-1" au statut "OUVERTE" dont la date limite d'inscription est passée
    Quand le système ferme la randonnée "h-1"
    Alors son statut est "FERMÉE"
    Et l'historique indique que "Système" l'a fermée

  Scénario: Une randonnée complète est aussi fermée
    Étant donné une randonnée "h-2" au statut "COMPLÈTE" dont la date limite d'inscription est passée
    Quand le système ferme la randonnée "h-2"
    Alors son statut est "FERMÉE"
    Et les inscriptions en liste d'attente restent "EN_ATTENTE"

  Scénario: Une randonnée annulée n'est pas fermée
    Étant donné une randonnée "h-3" au statut "ANNULÉE"
    Quand le système ferme la randonnée "h-3"
    Alors son statut reste "ANNULÉE"
