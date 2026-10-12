package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.HikerUpdateDto
import seg3x02.carhms.application.dtos.queries.LeaderCertificationDto
import seg3x02.carhms.application.dtos.queries.MembershipStatusUpdateDto

/** Cas d'utilisation : Mettre à jour un randonneur. */
interface UpdateHiker {
    /** Le randonneur modifie ses propres informations. */
    fun updateHikerInfo(update: HikerUpdateDto)

    /** Un administrateur change le statut d'adhésion. */
    fun updateMembershipStatus(update: MembershipStatusUpdateDto)

    /** Un administrateur enregistre une certification : le randonneur devient organisateur. */
    fun recordLeaderCertification(certification: LeaderCertificationDto)
}
