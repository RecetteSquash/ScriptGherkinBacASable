# language: de
Funktionalität: Die Kaffeemaschine prüfen 
	Es handelt sich darum, das gute Funktionieren der Kaffeemaschine zu überprüfen.

	# optionale Grundlage. Wenn eine Grundlage anwesend ist, wird sie als zusätzliche Bedingung für jedes Szenario des Skriptes hinzugefügt.
	Grundlage:
		Gegeben sei eine Kaffeemaschine.


	# -------------------------- BEISPIELSZENARIO 1 -------------------------- 
	# Beispiel für ein einfaches Szenario
	Szenario: Überprüfung, dass die Kaffeemaschine zur Verfügung steht.
		Gegeben sei, dass die Maschine angeschlossen ist.
		Wenn ich meine Karte vorstelle.
		Dann stelle ich fest, dass mein Kontostand angezeigt wird.



	# -------------------------- BEISPIELSZENARIO 3 -------------------------- 
	# Beispielszenario mit Datentafel mit Platzhalter in Testschritten
	# Während des Durchlaufs werden die Werte der Parameter zwischen <> substituiert
	# Das Szenario wird einmal für jeden Datensatz gespielt sein
	Szenariogrundriss: die Lieferung der Produkte überprüfen.
		Gegeben sei die Maschine steht zur Verfügung.
		Und mein Kontostand mindestens <Preis> beträgt.
		Wenn ich <Produkt> auswähle.
		Dann spendet mir die Maschine ein <Produkt> und <Preis> wird von meinem Konto abgebucht.
		Beispiele:
		| Produkt			| Preis  |
		| Espresso		| 0.40   |
		| Lungo				| 0.50   |
		| Cappuccino	| 0.80   |

