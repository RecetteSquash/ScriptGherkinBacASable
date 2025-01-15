# language: fr
Fonctionnalité: Manx
  
  
  Plan du scénario: race de chat
    Soit un chat aux poils <poils>
    Quand  il a la queue <queue>, les yeux <couleur_des_yeux>, la robe <couleur_du_pelage> et que'il à un caractère plutot <caractere> 
    Alors il s'agit d'un <race>
    Exemples: 
    | poils    | queue                               |  couleur des yeux     |  couleur du pelage |      caractere      |  race      
    |  long    | longue                              |        vert           |    brun marbré     |        calme        | main coon
    | court    | extrèment courte voire pas de queue |        jaune          |        brune       |      démonstratif   | manx
    | mi-long  | courte                              |        vert           |      tachetée      |      démonstratif   | rumpy
    | court    | longue et fine                      |        marron         |      grise         |        calme        | chartreux
    | long     | longue                              |        vert           |      gris marbré   |        calme        |  persan
    
  
  

Plan du scénario: le chat prend du poids
  Soit un chat adulte 
  Quand il mange plus de 500g de croquette par jour 
  Alors il prend du poids



Scénario: le chat va chasser
  Soit un chat de n'importe quelle race 
  Quand la ration journalière en proteine n'est pas suffisante 
  Alors le chat va instinctivement chasser 