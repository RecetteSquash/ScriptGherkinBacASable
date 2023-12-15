# language: fr
Fonctionnalité: sollemniter bonorum Parthica ingenium recensere saeviebat sollemniter orientales a reieci exturbatum defensione fas multatio velut carnifex capitum et versabatur Aegypto non celate oportunum fas turbidum societate per an
  
  Plan du Scénario: Vérifier la livraison des produits
    Etant donné que la machine est en marche
    Et que mon solde est au moins de <prixducafe>.
    
    Quand je selectionne l' <typecafe>
    Alors la mahcine me sert un Expresso bien corsé et mon compte est débité de <prixducafe>.
    
    Exemples:
    |  typecafe     | prixducafe  |
    | Expresso      |  0.4        | 
    | Cafe au Lait  |  0.6        | 
    | Cafe noisette |  1          |  