package seg3x02.carhms.application.dtos.responses

data class SignUpResultDto(
    val registrationId: String,
    /** CONFIRMEE ou EN_ATTENTE */
    val status: String,
    /** Position dans la liste d'attente, null si confirmée. */
    val waitlistPosition: Int? = null,
)
