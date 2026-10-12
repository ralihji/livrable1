package seg3x02.carhms.application.dtos.queries

data class MembershipStatusUpdateDto(
    val administratorId: String,
    val hikerId: String,
    /** ACTIVE, EXPIREE ou SUSPENDUE */
    val status: String,
)
