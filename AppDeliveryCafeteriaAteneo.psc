Algoritmo AppDeliveryCafeteriaAteneo
	
    // Declaraci�n de variables
    Dimension  menu[10] 
    Dimension precios[10] 
    Dimension pedido[10] 
    Definir total, descuento, subtotal como Real
    Definir opcion, cantidad, indice como Entero
    Definir direccion, nombreCliente, telefonoCliente como Cadena
    Definir continuar, confirmarPedido como Caracter
	
    // Inicializaci�n de variables
    total <- 0
    continuar <- "si"
	
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
    Mientras continuar = "si" Hacer
        LimpiarPantalla
		escribir "|--------------------------------------------+"
		escribir "|� Bienvenidos App Delivery Cafeteria Ateneo !|"
        escribir "+--------------------------------------------+"
        Escribir "MEN�:"
        Para indice <- 1 Hasta 5 Hacer
            Escribir indice, ". ", menu[indice], " - $", precios[indice]
			
        FinPara
		
        Escribir("Ingrese el n�mero del producto que desea ordenar:")
        Leer opcion
        Escribir "Ingrese la cantidad:"
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
		
        Escribir"�Desea ordenar algo m�s? (si/no)"
        Leer continuar
        continuar <- Minusculas(continuar)
    FinMientras
	
    // Informaci�n de entrega
    LimpiarPantalla
    Escribir "INFORMACI�N DE ENTREGA:"
    Escribir "Ingrese su nombre:"
    Leer nombreCliente
    Escribir "Ingrese su direcci�n:"
    Leer direccion
    Escribir "Ingrese su n�mero de tel�fono:"
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
    
    Escribir("�Desea confirmar el pedido? (si/no)")
    Leer confirmarPedido
    confirmarPedido <- Minusculas(confirmarPedido)
	
    Si confirmarPedido = "si" Entonces
        Escribir "Su pedido ha sido confirmado y ser� entregado a la direcci�n:"
        Escribir direccion
        Escribir "�Gracias por su pedido, ", nombreCliente, "!"
		
    Sino
        Escribir("Pedido cancelado.")

    FinSi

FinAlgoritmo
