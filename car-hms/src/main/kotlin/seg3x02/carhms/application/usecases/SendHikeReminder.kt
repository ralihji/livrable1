package seg3x02.carhms.application.usecases

/** Cas d'utilisation : Envoyer un rappel de randonnée (déclenché la veille par une tâche planifiée). */
interface SendHikeReminder {
    fun sendHikeReminder(hikeId: String)
}
