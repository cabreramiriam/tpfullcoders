Algoritmo AppDeliveryCafeteriaAteneo
	
    // Declaración de variables
    Dimension  menu[10] 
    Dimension precios[10] 
    Dimension pedido[10] 
    Definir total, descuento, subtotal como Real
    Definir opcion, cantidad, indice como Entero
    Definir direccion, nombreCliente, telefonoCliente como Cadena
    Definir continuar, confirmarPedido como Caracter
	
    // Inicialización de variables
    total <- 0
    continuar <- "si"
	
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
    Mientras continuar = "si" Hacer
        LimpiarPantalla
		escribir "|--------------------------------------------+"
		escribir "|¡ Bienvenidos App Delivery Cafeteria Ateneo !|"
        escribir "+--------------------------------------------+"
        Escribir "MENÚ:"
        Para indice <- 1 Hasta 5 Hacer
            Escribir indice, ". ", menu[indice], " - $", precios[indice]
			
        FinPara
		
        Escribir("Ingrese el número del producto que desea ordenar:")
        Leer opcion
        Escribir "Ingrese la cantidad:"
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
		
        Escribir"¿Desea ordenar algo más? (si/no)"
        Leer continuar
        continuar <- Minusculas(continuar)
    FinMientras
	
    // Información de entrega
    LimpiarPantalla
    Escribir "INFORMACIÓN DE ENTREGA:"
    Escribir "Ingrese su nombre:"
    Leer nombreCliente
    Escribir "Ingrese su dirección:"
    Leer direccion
    Escribir "Ingrese su número de teléfono:"
    Leer telefonoCliente
	
    // Mostrar el resumen de la orden
    LimpiarPantalla
    Escribir "RESUMEN DE LA ORDEN:"
    Para indice <- 1 Hasta 5 Hacer
        Si pedido[indice] > 0 Entonces
            Escribir menu[indice], " - Cantidad: ", pedido[indice]
        FinSi
    FinPara
	
    // Calcular descuento (si lo hubiera)
    Si total > 20 Entonces
        descuento <- total * 0.1
        total <- total - descuento
        Escribir "Descuento aplicado: $", descuento
    FinSi
	
    Escribir "TOTAL A PAGAR: $", total
    
    Escribir("¿Desea confirmar el pedido? (si/no)")
    Leer confirmarPedido
    confirmarPedido <- Minusculas(confirmarPedido)
	
    Si confirmarPedido = "si" Entonces
        Escribir "Su pedido ha sido confirmado y será entregado a la dirección:"
        Escribir direccion
        Escribir "¡Gracias por su pedido, ", nombreCliente, "!"
		
    Sino
        Escribir("Pedido cancelado.")

    FinSi

FinAlgoritmo
