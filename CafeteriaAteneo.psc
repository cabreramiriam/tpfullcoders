Algoritmo CafeteriaAteneo

    // Declaración de variables
    Dimension  menu[10] 
    Dimension  precios[10] 
    Dimension pedido[10] 
    Definir total, descuento, subtotal como Real
    Definir opcion, cantidad, indice como Entero
    Definir continuar como Caracter
	
		Mostrar menuPrincipal
		escribir "|--------------------------------------+"
		escribir "|¡ Bienvenidos a la cafeteria Ateneo   |"
        escribir "+--------------------------------------+"
		escribir "1. Hacer pedido "
		escribir "2. Mostrar  precios "
		escribir "3. Salir"
		Leer menuPrincipal
		
		
		 
    
    total <- 0
    continuar <- "S"
	
    // Cargar el menú
    menu[1] <- "Café Americano"
    menu[2] <- "Café Expreso"
    menu[3] <- "Café Latte"
    menu[4] <- "Té de Manzanilla"
    menu[5] <- "Té Verde"
    precios[1] <- 2.50
    precios[2] <- 3.00
    precios[3] <- 3.50
    precios[4] <- 2.00
    precios[5] <- 2.50
	
    // Ciclo principal del programa
    Mientras continuar = "S" Hacer
        LimpiarPantalla
        Escribir("MENÚ:")
        Para indice <- 1 Hasta 5 Hacer
            Escribir indice, ". ", menu[indice], " - $", precios[indice]
        FinPara
		
        Escribir("Ingrese el número del producto que desea ordenar:")
        Leer opcion
        Escribir("Ingrese la cantidad:")
        Leer cantidad
		
        // Validar la opción ingresada
        Si opcion >= 1 Y opcion <= 5 Entonces
            subtotal <- precios[opcion] * cantidad
            total <- total + subtotal
            pedido[opcion] <- pedido[opcion] + cantidad
            Escribir "Ha ordenado ", cantidad, " ", menu[opcion], " por $", subtotal
        Sino
            Escribir("Opción no válida. Por favor, seleccione un número del menú.")
        FinSi
		
        Escribir("¿Desea ordenar algo más? (S/N)")
        Leer continuar
        continuar <- Mayusculas(continuar)
    FinMientras
	
    // Mostrar el resumen de la orden
    LimpiarPantalla
    Escribir("RESUMEN DE LA ORDEN:")
    Para indice <- 1 Hasta 5 Hacer
        Si pedido[indice] > 0 Entonces
            Escribir menu[indice], " - Cantidad: ", pedido[indice]
        FinSi
    FinPara
	
    // Calcular descuento (si lo hubiera)
    Si total > 10 Entonces
        descuento <- total * 0.1
        total <- total - descuento
        Escribir "Descuento aplicado: $", descuento
    FinSi
	
    Escribir "TOTAL A PAGAR: $", total
    Escribir("¡Gracias por su compra!")
    Mostrar "Gracias por su visita :"
	Para i <- 1 Hasta menuPrincipal
		Mostrar sitio 
	Fin Para		
	leer sitio 


FinAlgoritmo