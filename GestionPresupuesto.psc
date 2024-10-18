Algoritmo GestionPresupuestoV7
		Definir presupuesto, ingreso, gasto_total, precio , ojo, resta, sumatoria Como Real
		Definir n, i, respuesta, precios, precios2 Como Entero
		Definir productos, pass, productos2 Como Cadena
		
		presupuesto <- 0
		gasto_total <- 0
		sumatoria <- 0
		resta <- 0
		
		Escribir "Bienvenido a la herramienta de gestión de presupuesto universitario."
		Escribir ""
		Escribir "Seleccione la opción que desee."
		Escribir "1. Comenzar la gestión de presupuesto."
		Escribir "2. Salir del programa."
		Leer pass
		
		
		Según pass hacer 
	"1":
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
				Escribir ""
				Escribir "Su presupuesto restante es: ", resta
			FinSi
			Escribir ""
			Escribir "Gasto total: ", gasto_total
			presupuestoRestante = presupuesto - gasto_total
			
			Si gasto_total > presupuesto Entonces
				Escribir ""
				Escribir "¡Atención! Se ha excedido del presupuesto disponible."
			SiNo
				Escribir ""
				Escribir "Sus gastos están dentro del presupuesto."
			FinSi
		FinSi
		Escribir "¿Desea volver a realizar una gestión? (1 para si y 0 para no)"
		leer respuesta
		si respuesta = 1 Entonces
			Escribir ""
			Escribir "Bienvenido a la herramienta de gestión de presupuesto universitario."
			Escribir ""
			Escribir "Seleccione la opción que desee."
			Escribir "1. Comenzar la gestión de presupuesto."
			Escribir "2. Salir del programa."
			Leer pass
			
			
			Según pass hacer 
		"1":
			Escribir "Ingrese su presupuesto mensual inicial: "
			Leer presupuesto
			Si presupuesto<0 Entonces
				Escribir "El valor es invalido"
			SiNo
				Escribir "¿Cuántos productos desea registrar? "
				Leer n
				Dimension productos2(n)
				Dimension precios2(n)
				
				Para i <- 1 Hasta n Hacer
					Escribir "Ingrese el nombre del producto ", i, ": "
					Leer productos2[i]
					Escribir "Ingrese el precio del producto ", i, ": "
					Leer precios2[i]
					si precios2[i] > 0 Entonces
						gasto_total <- gasto_total + precios2[i]
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
					Escribir ""
					Escribir "Su presupuesto restante es: ", resta
				FinSi
				Escribir ""
				Escribir "Gasto total: ", gasto_total
				presupuestoRestante = presupuesto - gasto_total
				
				Si gasto_total > presupuesto Entonces
					Escribir ""
					Escribir "¡Atención! Se ha excedido del presupuesto disponible."
				SiNo
					Escribir ""
					Escribir "Sus gastos están dentro del presupuesto."
				FinSi
			FinSi
			
		"2": 
			Escribir "Ha salido con éxito, ¡hasta pronto!"
			
		De Otro Modo:
			Escribir "La opción seleccionada es inválida."
	FinSegún
SiNo
	Escribir "Gracias por usar esta herramienta"
FinSi

		
	"2": 
		Escribir "Ha salido con éxito, ¡hasta pronto!"
		
	De Otro Modo:
		Escribir "La opción seleccionada es inválida."
FinSegún
FinAlgoritmo
