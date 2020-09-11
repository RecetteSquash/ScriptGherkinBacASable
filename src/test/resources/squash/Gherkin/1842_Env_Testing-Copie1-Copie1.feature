# Automation priority: null
# Test case importance: LOW
# language: fr
Fonctionnalité: Environment_Test

    Contexte:
      Etant donné que je suis sur la page d'accueil Qwant

    Scénario: Je veux chercher sur Qwant le site d'une entreprise
      Soit je renseigne l'entreprise "Henix" dans la barre de recherche
      Et j'appuie sur la touche Entrée
      Lorsque je clique sur le premier lien
      Alors on obtient la page de l'entreprise