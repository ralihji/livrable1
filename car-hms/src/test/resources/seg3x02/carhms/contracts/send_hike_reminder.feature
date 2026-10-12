# language: fr
Fonctionnalité: Envoyer un rappel de randonnée (commande sendHikeReminder)
  La veille d'une randonnée, chaque randonneur confirmé reçoit un rappel, avec un avertissement si la météo l'exige.

  Contexte:
    Étant donné une randonnée "h-1" non annulée qui a lieu demain sur "Sentier Wolf"
    Et "rando-1" a une inscription "CONFIRMÉE" à "h-1"
    Et "rando-2" a une inscription "EN_ATTENTE" à "h-1"

  Scénario: Beau temps prévu
    Étant donné que le service météo prévoit du soleil au point de départ
    Quand le système envoie le rappel de la randonnée "h-1"
    Alors "rando-1" reçoit un courriel avec la date, l'heure de début, le sentier et le point de départ
    Et le courriel ne contient pas d'avertissement météo
    Et "rando-2" ne reçoit pas de rappel

  Scénario: Pluie prévue
    Étant donné que le service météo prévoit de la pluie au point de départ
    Quand le système envoie le rappel de la randonnée "h-1"
    Alors le courriel de "rando-1" contient un avertissement météo

  Scénario: Le service météo ne répond pas
    Étant donné que le service météo est indisponible
    Quand le système envoie le rappel de la randonnée "h-1"
    Alors "rando-1" reçoit quand même son rappel, sans avertissement météo
