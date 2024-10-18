Proceso GestionPresupuesto
    Definir presupuesto, ingreso, gasto_total, precio , ojo, resta, sumatoria Como Real
    Definir n, i Como Entero
    Definir productos Como Cadena
	
    // Inicialización de variables
    presupuesto <- 0
    gasto_total <- 0
	sumatoria <- 0
	resta <- 0
    
    // Ingreso del presupuesto inicial
    Escribir "Ingrese su presupuesto mensual inicial: "
    Leer presupuesto
	
    // Ingresar ingresos adicionales (si los hay)
    Escribir "¿Desea registrar algún ingreso adicional? (1 para Sí, 0 para No): "
    Leer ingreso
    Si ingreso = 1 Entonces
        Escribir "Ingrese el monto adicional: "
        Leer ingreso
        presupuesto <- presupuesto + ingreso
    FinSi
    
    // Ingreso de productos
    Escribir "¿Cuántos productos desea registrar? "
    Leer n
	Dimension productos(n)
	Dimension precios(n)

    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el nombre del producto ", i, ": "
        Leer productos[i]
        Escribir "Ingrese el precio del producto ", i, ": "
        Leer precio
        precios[i] <- precio
        gasto_total <- gasto_total + precio
		sumatoria = sumatoria+precios[i]
		resta = presupuesto-sumatoria
		Escribir "Presupuesto restante: ", resta 
    Fin Para
	
    
    // Mostrar gastos totales y presupuesto disponible
    Escribir "Gasto total: ", gasto_total
	presupuestoRestante = presupuesto - gasto_total
    
    // Validar si se excede del presupuesto
    Si gasto_total > presupuesto Entonces
        Escribir "¡Atención! Se ha excedido del presupuesto disponible."
    SiNo
        Escribir "Sus gastos están dentro del presupuesto."
    FinSi
FinProceso

