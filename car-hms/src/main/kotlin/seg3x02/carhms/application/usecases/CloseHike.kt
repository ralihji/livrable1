package seg3x02.carhms.application.usecases

/** Cas d'utilisation : Fermer une randonnée (déclenché par une tâche planifiée). */
interface CloseHike {
    fun closeHike(hikeId: String)
}
