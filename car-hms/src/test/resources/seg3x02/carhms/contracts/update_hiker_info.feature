# language: fr
Fonctionnalité: Mettre à jour ses informations (commande updateHikerInfo)
  Un randonneur modifie ses propres informations personnelles.

  Scénario: Le randonneur change son téléphone et sa personne-ressource
    Étant donné un randonneur connecté "rando-1"
    Quand "rando-1" change son téléphone pour "613-555-0199" et sa personne-ressource pour "Léa Roy, 613-555-0142"
    Alors le profil de "rando-1" contient le téléphone "613-555-0199"
    Et la personne-ressource "Léa Roy, 613-555-0142"

  Scénario: Un randonneur ne peut pas modifier le profil d'un autre
    Étant donné un randonneur connecté "rando-1"
    Quand "rando-1" tente de modifier le profil de "rando-2"
    Alors la modification est refusée avec le motif "accès non autorisé"
