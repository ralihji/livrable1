package seg3x02.carhms.application.dtos.queries

import java.time.LocalDate

data class HikerRegistrationDto(
    val invitationCode: String,
    val email: String,
    val password: String,
    val firstName: String,
    val lastName: String,
    val phone: String,
    val address: AddressDto,
    val dateOfBirth: LocalDate,
    val emergencyContact: EmergencyContactDto,
    val skillLevel: String,
    val waiverAccepted: Boolean,
    /** Obligatoire si le randonneur a moins de 18 ans. */
    val legalGuardianName: String? = null,
)
