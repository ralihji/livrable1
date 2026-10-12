package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.HikeCreateDto

/** Cas d'utilisation : Créer une randonnée. */
interface CreateHike {
    /** @return l'identifiant unique attribué à la randonnée */
    fun createHike(hike: HikeCreateDto): String
}
