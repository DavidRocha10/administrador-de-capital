Algoritmo GestionPresupuestoV5
	Definir presupuesto, ingreso, gasto_total, precio , ojo, resta, sumatoria Como Real
	Definir n, i Como Entero
	Definir productos Como Cadena
	
	presupuesto <- 0
	gasto_total <- 0
	sumatoria <- 0
	resta <- 0
	Escribir "Ingrese su presupuesto mensual inicial: "
	Leer presupuesto
	Si presupuesto<0 Entonces
		Escribir "El valor es invalido"
	SiNo
		Escribir "¿Cuántos productos desea registrar? "
		Leer n
		Dimension productos(n)
		Dimension precios(n)
		
	Para i <- 1 Hasta n Hacer
		Escribir "Ingrese el nombre del producto ", i, ": "
		Leer productos[i]
		Escribir "Ingrese el precio del producto ", i, ": "
		Leer precios[i]
		si precios[i] > 0 Entonces
			gasto_total <- gasto_total + precios[i]
			resta = presupuesto-gasto_total
			Escribir "Presupuesto restante: ", resta 
			Si resta < 0 Entonces
				Escribir ""
				Escribir "Ya exedió el presupuesto"
			Fin Si
			Escribir ""
		SiNo
			Escribir "Número inválido"
		FinSi
	Fin Para
		
	Escribir "¿Desea registrar algún ingreso adicional? (1 para Sí, 0 para No): "
	Leer ingreso
	Si ingreso = 1 Entonces
		Escribir "Ingrese el monto adicional: "
		Leer ingreso
		resta <- resta + ingreso
		Escribir "Su presupuesto restante es: ", resta
	FinSi
		Escribir ""
		Escribir "Gasto total: ", gasto_total
		presupuestoRestante = presupuesto - gasto_total
			
			Si gasto_total > presupuesto Entonces
				Escribir "¡Atención! Se ha excedido del presupuesto disponible."
			SiNo
				Escribir "Sus gastos están dentro del presupuesto."
			FinSi
		FinSi
	
FinAlgoritmo
