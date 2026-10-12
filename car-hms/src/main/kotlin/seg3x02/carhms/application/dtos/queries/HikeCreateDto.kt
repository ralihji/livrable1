package seg3x02.carhms.application.dtos.queries

import java.time.Duration
import java.time.LocalDate
import java.time.LocalDateTime

data class HikeCreateDto(
    val organizerId: String,
    val trailId: String,
    val title: String,
    val description: String,
    val start: LocalDateTime,
    val expectedDuration: Duration,
    val registrationDeadline: LocalDate,
    val capacity: Int,
)
