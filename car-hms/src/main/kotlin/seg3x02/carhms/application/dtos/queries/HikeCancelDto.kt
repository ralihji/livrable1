package seg3x02.carhms.application.dtos.queries

data class HikeCancelDto(
    /** Organisateur de la randonnée ou administrateur. */
    val requesterId: String,
    val hikeId: String,
    val reason: String,
)
