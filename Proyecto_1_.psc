Algoritmo Proyecto_1_
	//Definimos nuestras variables y la dimensi�n de nuestra matriz de c�lculo de Costo de Env�o.//
	Definir cupon Como cadena
	Definir valorBruto,valorConDescuento,iva, valorConIva,valorTotal,valorTotalRedond,cant_,descu_ Como real
	Dimension calc_envio[4,4]
	
	//El usuario ingresa detalles de la compra //
	Escribir "Ingrese su producto:"
	Leer nombre_
	Escribir "Ingrese precio:"
	Leer valorBruto
	Escribir "Ingrese cup�n de descuento:"
	Leer cupon
	
	//Si compara si la variable cupon es v�lida para aplicar descuento de 10%.//
	si cupon = "DESCUENTO10" Entonces
		Escribir "Descuento v�lido"
		valorConDescuento=valorBruto*0.9
	SiNo
		Escribir "Cup�n no v�lido"
		valorConDescuento=valorBruto
	FinSi
	
	//Se define el valor de IVA de 12% y luego se le aplica al valor del producto determinado en el paso anterior//
	iva=0.12
	valorConIva=valorConDescuento+(valorConDescuento*iva)
	
	//Se lee la cantidad y se almacena en la variable cant_//
	Escribir "Ingrese cantidad:"
	Leer cant_
	
	// De acuerdo a la cantidad ingresada, se define el correspondiente descuento//
	si cant_<=5 Entonces
		descu_<-0
	FinSi
	si cant_>5 y cant_<=15 Entonces
		descu_<-0.1
	FinSi
	si cant_>15 y cant_<=25 Entonces
		descu_<-0.2
	FinSi
	si cant_>25 Entonces
		descu_<-0.3
	FinSi
	
	//Se aplica el descuento al valor y se aplica la funcion redon para redondear el valor//
	valorTotal=valorConIva*(1-descu_)*cant_
	valorTotalRedond = redon(valorTotal)
	
	//El usuario selecciona la regi�n de destino dentro de la lista y la respuesa se almacena en la variable region//
	Escribir "Direcci�n de env�o:"
	Escribir "1.Regi�n Metropolitana, OHiggins o Val�pra�so"
	Escribir "2.B�o-B�o, La Araucan�a, �uble o Maule "
	Escribir "3.Atacama, Coquimbo, Los R�os o Los Lagos"
	Escribir "4.Arica y Parinacota, Tarapac�, Antofagasta, Ays�n o Magallanes"
	Leer region
	
	// Gracias al uso de dos funciones Para anidadas, se genera la matriz de calc_evio[i,j] segun peso y destino, correspondiento i a peso y j a region//
	Para i <- 1 Hasta 4 Con Paso 1 Hacer
        Para j <- 1 Hasta 4 Con Paso 1 Hacer
            calc_envio[i,j] <- (500*i)+(500*j)
        FinPara
    FinPara
	
	//Se calula el peso del pedido, tomando un valor fijo de 2 y multiplicandolo por la cantidad ingresada por el usuario//
	peso<-2*cant_
	
	//Se asignan valores a variable i seg�n el peso obtenido anteriormente//
	si peso<=5 Entonces
		i=1	
	FinSi
	si	peso>=6 y peso<=10 Entonces
		i=2
	FinSi
	si peso>=11 y peso<=15 Entonces
		i=3
	FinSi
	si peso>=16 Entonces
		i=4
	FinSi
	
	//Se asignan valores a la variable j seg�n el valor almacenado en la variable region//
	si region=1 Entonces
		j=1
	FinSi
	si region=2 Entonces
		j=2
	FinSi
	si region=3 Entonces
		j=3
	FinSi
	si region=4 Entonces
		j=4
	FinSi
	
	//Se entrega el desglose final de la compra detallando descuento por cup�n, IVA aplicado, descuento por cantidad, costo de env�o y costo total//
	Escribir "==================================="
	Escribir "Desglose de su compra:"
	si cupon = "DESCUENTO10" Entonces
		Escribir "Descuento de 10% por cup�n:"," ","$", valorBruto*0.1*cant_;		
	FinSi
	Escribir "IVA (12%):", " ","$", valorConDescuento*iva*cant_
	Escribir "Descuento de:",descu_*100,"% por llevar", " ", cant_, "  ", "unidades:", "  ","$" valorConIva*descu_*cant_
	Escribir "Costo de env�o:","$", calc_envio[i,j];
	Escribir "Costo total:", "$",calc_envio[i,j]+valorTotalRedond
	
	
FinAlgoritmo
