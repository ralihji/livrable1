# language: fr
Fonctionnalité: Enregistrer une certification de chef de randonnée (commande recordLeaderCertification)
  Un administrateur fait d'un randonneur un organisateur de randonnée.

  Scénario: Le randonneur devient organisateur
    Étant donné un administrateur connecté "admin-1"
    Et un randonneur "rando-1" qui n'est pas organisateur
    Quand "admin-1" enregistre pour "rando-1" le certificat "CHR-0042", délivré le "2026-05-01", expirant le "2028-05-01", avec le niveau d'organisateur "difficile"
    Alors "rando-1" est organisateur de randonnée
    Et sa certification "CHR-0042" expire le "2028-05-01"

  Scénario: Les dates de la certification sont incohérentes
    Quand "admin-1" enregistre un certificat délivré le "2026-05-01" et expirant le "2025-05-01"
    Alors l'enregistrement est refusé avec le motif "dates de certification invalides"
