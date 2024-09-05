# language: fr
Fonctionnalité: Test Gherkin 1
  
  Contexte:
  Afin d'accéder à mon compte personnel
  En tant qu'utilisateur enregistré
  Je veux pouvoir me connecter avec mon adresse e-mail et mon mot de passe

  Scénario: Connexion réussie avec des identifiants valides
    Étant donné que l'utilisateur est sur la page de connexion
    Quand l'utilisateur saisit une adresse e-mail valide "user@example.com"
    Et l'utilisateur saisit un mot de passe valide "Password123"
    Et l'utilisateur clique sur le bouton "Connexion"
    Alors l'utilisateur est redirigé vers la page d'accueil de son compte
    Et un message de bienvenue "Bienvenue, [Nom d'utilisateur]!" s'affiche

  Scénario: Connexion échoue avec un mot de passe incorrect
    Étant donné que l'utilisateur est sur la page de connexion
    Quand l'utilisateur saisit une adresse e-mail valide "user@example.com"
    Et l'utilisateur saisit un mot de passe incorrect "WrongPassword"
    Et l'utilisateur clique sur le bouton "Connexion"
    Alors un message d'erreur "Adresse e-mail ou mot de passe incorrect." s'affiche
    Et l'utilisateur reste sur la page de connexion

  Scénario: Connexion échoue avec une adresse e-mail invalide
    Étant donné que l'utilisateur est sur la page de connexion
    Quand l'utilisateur saisit une adresse e-mail invalide "invalid@example.com"
    Et l'utilisateur saisit un mot de passe valide "Password123"
    Et l'utilisateur clique sur le bouton "Connexion"
    Alors un message d'erreur "Adresse e-mail ou mot de passe incorrect." s'affiche
    Et l'utilisateur reste sur la page de connexion