# language: fr
Fonctionnalité: Changer le statut d'adhésion (commande updateMembershipStatus)
  Un administrateur change le statut d'adhésion d'un randonneur.

  Scénario: Suspendre une adhésion
    Étant donné un administrateur connecté "admin-1"
    Et un randonneur "rando-1" dont l'adhésion est "ACTIVE"
    Quand "admin-1" met l'adhésion de "rando-1" à "SUSPENDUE"
    Alors l'adhésion de "rando-1" est "SUSPENDUE"
    Et "rando-1" ne peut plus s'inscrire à une randonnée

  Scénario: Un randonneur ne peut pas changer une adhésion
    Étant donné un randonneur connecté "rando-2"
    Quand "rando-2" tente de changer l'adhésion de "rando-1"
    Alors la modification est refusée avec le motif "réservé aux administrateurs"
