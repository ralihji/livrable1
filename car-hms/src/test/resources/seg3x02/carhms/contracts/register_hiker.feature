# language: fr
Fonctionnalité: Enregistrer un randonneur (commande registerHiker)
  Un membre du club crée son compte avec le code d'invitation reçu des administrateurs.

  Contexte:
    Étant donné un code d'invitation "CAIRN-2026-AB12" valide et jamais utilisé

  Scénario: Un adulte s'enregistre
    Quand un visiteur s'enregistre avec le code "CAIRN-2026-AB12", le courriel "marie@exemple.ca", né le "1995-04-12", et accepte la décharge
    Alors un randonneur est créé avec le courriel "marie@exemple.ca"
    Et son adhésion est "ACTIVE"
    Et le code "CAIRN-2026-AB12" est marqué comme utilisé

  Scénario: Un mineur s'enregistre avec un tuteur légal
    Quand un visiteur né le "2011-09-01" s'enregistre avec le code "CAIRN-2026-AB12" et son tuteur "Paul Tremblay" accepte la décharge
    Alors un randonneur est créé
    Et le nom du tuteur "Paul Tremblay" est consigné

  Scénario: Un mineur sans tuteur
    Quand un visiteur né le "2011-09-01" s'enregistre avec le code "CAIRN-2026-AB12" sans tuteur légal
    Alors l'enregistrement est refusé avec le motif "décharge du tuteur requise"

  Scénario: Le code a déjà servi
    Étant donné que le code "CAIRN-2026-AB12" a déjà été utilisé
    Quand un visiteur s'enregistre avec le code "CAIRN-2026-AB12"
    Alors l'enregistrement est refusé avec le motif "code d'invitation invalide"

  Scénario: Le courriel est déjà pris
    Étant donné un randonneur existant avec le courriel "marie@exemple.ca"
    Quand un visiteur s'enregistre avec le code "CAIRN-2026-AB12" et le courriel "marie@exemple.ca"
    Alors l'enregistrement est refusé avec le motif "courriel déjà utilisé"
