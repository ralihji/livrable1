# CAR-HMS – Système de gestion des événements de randonnée du Club Cairn

Projet SEG 3102 (automne 2026). Backend Kotlin + Spring Boot.

## Livrable 1 : domaine initial

| Élément demandé | Emplacement |
| --- | --- |
| Structure de haut niveau du domaine (un sous-paquetage + README par sous-domaine) | `src/main/kotlin/seg3x02/carhms/domain/` : `hike`, `registration`, `hiker`, `report`, `trail`, `identity`, `notification`, `weather` |
| Commandes d'application (une interface par cas d'utilisation, sauf Sign In, Sign Out et Generate Trail Usage Report) | `src/main/kotlin/seg3x02/carhms/application/usecases/` |
| DTO de requête | `src/main/kotlin/seg3x02/carhms/application/dtos/queries/` |
| Contrats initiaux (une fonctionnalité Cucumber par commande, en français) | `src/test/resources/seg3x02/carhms/contracts/` |

Les définitions d'étapes Cucumber seront ajoutées avec l'implémentation des commandes.

## Lancer

```bash
gradle wrapper   # une fois, pour générer gradlew
./gradlew build
```
