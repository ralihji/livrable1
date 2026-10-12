package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.HikerRegistrationDto

/** Cas d'utilisation : Enregistrer un randonneur. */
interface RegisterHiker {
    /** @return l'identifiant du nouveau randonneur */
    fun registerHiker(registration: HikerRegistrationDto): String
}
