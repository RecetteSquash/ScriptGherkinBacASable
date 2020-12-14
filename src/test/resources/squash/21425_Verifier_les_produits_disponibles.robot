# Automation priority: 10
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
Vérifier les produits disponibles
	${row_1_1} =	Create List	chien	chat
	${row_1_2} =	Create List	isis	beagle
	${row_1_3} =	Create List	g51+d40	rty'hrbfc
	${row_1_4} =	Create List	t'h gedv cvn b;ippù:,w	y'(ujhtrgbfv c
	${datatable_1} =	Create List	${row_1_1}	${row_1_2}	${row_1_3}	${row_1_4}
	${row_2_1} =	Create List	fergt	prigrgr	Expresso	rfhdg
	${row_2_2} =	Create List	br	nther
	${row_2_3} =	Create List	Capfbbpuccino	brher
	${datatable_2} =	Create List	${row_2_1}	${row_2_2}	${row_2_3}
	${row_3_1} =	Create List	produit	prix
	${row_3_2} =	Create List	Expresso	0.40
	${row_3_3} =	Create List	Lungo	0.50
	${row_3_4} =	Create List	Cappuccino	0.80
	${datatable_3} =	Create List	${row_3_1}	${row_3_2}	${row_3_3}	${row_3_4}

	Given la machine est en marche "${datatable_1}"
	When je liste les produits disponibles "${datatable_2}"
	# Seuls les produits de la catégorie Café 
	# sont vérifiés dans ce test
	Then je constata que mon solde s'affiche "${datatable_3}"
	# le prix des produits s'affiche à droite sur l'écran 
	# et le nom des produits à gauche