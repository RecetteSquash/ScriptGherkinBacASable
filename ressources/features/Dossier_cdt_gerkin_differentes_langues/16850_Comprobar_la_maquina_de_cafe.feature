# language: es 
Característica: Comprobar la máquina de café
	Asegurarse de qué la máquina de café funciona correctamente

	# Contexto facultativo. Cuando un contexto existe, será reutilizado como condición suplementaria para cada escenario del script.
	Antecedentes:
		Dado una máquina de café


	# -------------------------- ESCENARIO DE EJEMPLO 1 -------------------------- 
	# Ejemplo de escenario simple
	Escenario: Verificar que la máquina de café es disponible.
		Dado que la máquina está conectada.
		Cuando utilizo mi tarjeta.
		Entonces constato que mi saldo se indica.


	# -------------------------- ESCENARIO DE EJEMPLO 2 -------------------------- 
	# Ejemplo de escenario con tabla de datos sin configuración de los pasos de prueba
	Escenario: Controlar cuales son los productos disponibles.
		Dado que la máquina está conectada.
		Cuando listo los productos disponibles.
		Entonces constato que todos los productos siguientes son disponibles:
		| producto		| precio |
		| Espresso		|  0.40  |
		| Lungo				|  0.50  |
		| Cappuccino	|  0.80  |


	# -------------------------- ESCENARIO DE EJEMPLO 3 -------------------------- 
	# Ejemplo de escenario con tabla de datos y pasos de prueba configurados
	# Los valores de los parámetros entre <> serán sustituidos a la ejecución
	# El escenario estará ejecutado una vez para cada dataset
	Esquema del escenario: Verificar la entrega de los productos
		Dado que la máquina está conectada.
		Y que mi saldo es de <precio> por lo menos.
		Cuando selecciono el <producto>.
		Entonces la máquina me sirve un <producto> y le cargó el <precio> a mi cuenta.
		Ejemplos:
		| producto		| precio |
		| Espresso		|  0.40  |
		| Lungo				|  0.50  |
		| Cappuccino	|  0.80  |
