package seg3x02.carhms.application.dtos.queries

import java.time.LocalDate

data class LeaderCertificationDto(
    val administratorId: String,
    val hikerId: String,
    val certificateNumber: String,
    val issueDate: LocalDate,
    val expiryDate: LocalDate,
    val organizerLevel: String,
)
