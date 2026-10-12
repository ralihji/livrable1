package seg3x02.carhms.application.dtos.queries

import java.time.LocalDate

/** Critères de recherche des randonnées ouvertes ; tous facultatifs (aucun = toutes, triées par date). */
data class HikeSearchDto(
    val trailName: String? = null,
    val date: LocalDate? = null,
    val difficulty: String? = null,
    val hikerId: String? = null,
)
