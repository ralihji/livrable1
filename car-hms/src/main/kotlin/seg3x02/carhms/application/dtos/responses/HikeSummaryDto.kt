package seg3x02.carhms.application.dtos.responses

import java.time.LocalDateTime

/** Ce que Parcourir les randonnées affiche pour chaque randonnée. */
data class HikeSummaryDto(
    val hikeId: String,
    val title: String,
    val trailName: String,
    val difficulty: String,
    val start: LocalDateTime,
    val organizerName: String,
    val remainingPlaces: Int,
    /** Vrai si le randonneur connecté peut s'y inscrire selon son niveau. */
    val matchesSkillLevel: Boolean? = null,
)
