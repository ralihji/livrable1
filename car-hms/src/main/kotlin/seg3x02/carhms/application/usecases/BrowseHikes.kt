package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.HikeSearchDto
import seg3x02.carhms.application.dtos.responses.HikeSummaryDto

/** Cas d'utilisation : Parcourir les randonnées. */
interface BrowseHikes {
    fun browseOpenHikes(search: HikeSearchDto): List<HikeSummaryDto>
}
