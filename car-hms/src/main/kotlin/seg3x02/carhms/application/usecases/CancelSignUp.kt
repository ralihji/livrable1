package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.CancelSignUpDto

/** Cas d'utilisation : Annuler une inscription. */
interface CancelSignUp {
    fun cancelSignUp(cancellation: CancelSignUpDto)
}
