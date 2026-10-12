package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.SignUpDto
import seg3x02.carhms.application.dtos.responses.SignUpResultDto

/** Cas d'utilisation : S'inscrire à une randonnée. */
interface SignUpForHike {
    fun signUpForHike(signUp: SignUpDto): SignUpResultDto
}
