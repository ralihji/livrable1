package seg3x02.carhms.application.dtos.queries

/** Informations personnelles qu'un randonneur peut modifier lui-même. */
data class HikerUpdateDto(
    val hikerId: String,
    val firstName: String,
    val lastName: String,
    val phone: String,
    val address: AddressDto,
    val emergencyContact: EmergencyContactDto,
    val skillLevel: String,
)
