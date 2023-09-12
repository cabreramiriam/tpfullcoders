Algoritmo CafeteriaAteneo

    // Declaraci�n de variables
    Dimension  menu[10] 
    Dimension  precios[10] 
    Dimension pedido[10] 
    Definir total, descuento, subtotal como Real
    Definir opcion, cantidad, indice como Entero
    Definir continuar como Caracter
	
		Mostrar menuPrincipal
		escribir "|--------------------------------------+"
		escribir "|� Bienvenidos a la cafeteria Ateneo   |"
        escribir "+--------------------------------------+"
		escribir "1. Hacer pedido "
		escribir "2. Mostrar  precios "
		escribir "3. Salir"
		Leer menuPrincipal
		
		
		 
    
    total <- 0
    continuar <- "S"
	
    // Cargar el men�
    menu[1] <- "Caf� Americano"
    menu[2] <- "Caf� Expreso"
    menu[3] <- "Caf� Latte"
    menu[4] <- "T� de Manzanilla"
    menu[5] <- "T� Verde"
    precios[1] <- 2.50
    precios[2] <- 3.00
    precios[3] <- 3.50
    precios[4] <- 2.00
    precios[5] <- 2.50
	
    // Ciclo principal del programa
    Mientras continuar = "S" Hacer
        LimpiarPantalla
        Escribir("MEN�:")
        Para indice <- 1 Hasta 5 Hacer
            Escribir indice, ". ", menu[indice], " - $", precios[indice]
        FinPara
		
        Escribir("Ingrese el n�mero del producto que desea ordenar:")
        Leer opcion
        Escribir("Ingrese la cantidad:")
        Leer cantidad
		
        // Validar la opci�n ingresada
        Si opcion >= 1 Y opcion <= 5 Entonces
            subtotal <- precios[opcion] * cantidad
            total <- total + subtotal
            pedido[opcion] <- pedido[opcion] + cantidad
            Escribir "Ha ordenado ", cantidad, " ", menu[opcion], " por $", subtotal
        Sino
            Escribir("Opci�n no v�lida. Por favor, seleccione un n�mero del men�.")
        FinSi
		
        Escribir("�Desea ordenar algo m�s? (S/N)")
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
    Escribir("�Gracias por su compra!")
    Mostrar "Gracias por su visita :"
	Para i <- 1 Hasta menuPrincipal
		Mostrar sitio 
	Fin Para		
	leer sitio 


FinAlgoritmo