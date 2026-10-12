# language: fr
Fonctionnalité: Parcourir les randonnées (commande browseOpenHikes)
  N'importe qui peut consulter les randonnées ouvertes, sans se connecter.

  Contexte:
    Étant donné les randonnées suivantes :
      | id  | sentier       | date       | difficulté | statut  | places restantes |
      | h-1 | Sentier Wolf  | 2026-11-14 | modéré     | OUVERTE | 4                |
      | h-2 | Lac Pink      | 2026-11-02 | facile     | OUVERTE | 10               |
      | h-3 | Crête King    | 2026-11-20 | difficile  | FERMÉE  | 0                |

  Scénario: Lister toutes les randonnées ouvertes
    Quand un visiteur consulte les randonnées sans critère
    Alors il voit "h-2" puis "h-1", triées par date
    Et il ne voit pas "h-3"
    Et chaque randonnée affiche l'organisateur et le nombre de places restantes

  Scénario: Rechercher par nom de sentier
    Quand un visiteur cherche les randonnées du sentier "Sentier Wolf"
    Alors il voit seulement "h-1"

  Scénario: Un randonneur connecté voit les randonnées de son niveau
    Étant donné un randonneur connecté de niveau "débutant"
    Quand il consulte les randonnées sans critère
    Alors "h-2" et "h-1" sont marquées comme accessibles à son niveau
