package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.HikeCancelDto

/** Cas d'utilisation : Annuler une randonnée. */
interface CancelHike {
    fun cancelHike(cancellation: HikeCancelDto)
}
