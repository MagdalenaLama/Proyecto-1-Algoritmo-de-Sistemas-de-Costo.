# Proyecto-1-Algoritmo-de-Sistemas-de-Costo.
Primer proyecto donde se aplican conceptos de algoritmos programación estructurada, control de flujo, arreglos y el uso de Git y GitHub.

## Índice
1. Objetivos de Aprendizaje
2. Pleanteamiento
3. Requerimientos
4. Solución paso apaso

## 1. Objetivos de Aprendizaje
- Entender y aplicar conceptos básicos de algoritmos y programación estructurada.
- Utilizar variables, constantes, operadores aritméticos y de comparación.
- Implementar control de flujo mediante condiciones.
- Utilizar Git como sistema de control de versiones y colaborar en GitHub.

## 2. Planteamiento
Se construirá en Pseint un algoritmo en pseudocódigo que simule un sistema para calcular el costo de un producto con base en su precio original y el porcentaje de descuento aplicado, para luego calcular el costo total considerando cargas de impuesto, descuento por cantidad y valores de envío basados en peso y destino de entrega.

## 3. Requerimientos
- Leer el precio original del producto.
- Aplicar un descuento al producto si es aplicable (por ejemplo, si el cliente tiene un cupón de descuento que ccorresponde a un 10%).
- Aplicar impuestos al producto (IVA de un 12%).
- Si el cliente compra más de un artículo, aplicar un descuento por cantidad.( siendo 0 si compra menos de 5 unidades, 10% si compra entre 5 y 15 unidades, 20% si compra entre 15 y 25 y un 30% si compra más de 25.)
- Calcular el costo de envío basado en el destino y el peso del paquete.
- Calcular el costo final del producto sumando el precio con descuento, impuestos, descuento por cantidad y costo de envío.
- Mostrar el costo final del producto, desglosando los diferentes componentes (descuentos, impuestos, descuento por cantidad y costo de envío).

## 4. Solución paso a paso
1. Se declaran las variables a utilizar
   
- `cupon` se define como **Cadena** (_Sólo es válido si es ingresada exactamente como: "DESCUENTO10"_)
- `valorBruto`, `valorConDescuento`, `iva`, `valorConIva`, `valorTotal`, `valorTotalRedond`,`cant_`, `descu_` se definen como **Real**
- Definimos la **Dimension** `calc_envio[4,4]` para la matriz que nos entregará el costo de envío según el peso y el destino.

```psc
Definir cupon Como cadena
Definir valorBruto,valorConDescuento,iva, valorConIva,valorTotal,valorTotalRedond,cant_,descu_ Como real
Dimension calc_envio[4,4]
```
2. Se solicita al usuario que ingrese la información de nombre del producto, previo e ingresar el cupón.

```psc
Escribir "Ingrese su producto:"
Leer nombre_
Escribir "Ingrese precio:"
Leer valorBruto
Escribir "Ingrese cupón de descuento:"
Leer cupon
```

3. El programa verifica si el cupón es válido para aplicar el descuento de 10%
   
```psc
si cupon = "DESCUENTO10" Entonces
		Escribir "Descuento válido"
		valorConDescuento=valorBruto*0.9
	SiNo
		Escribir "Cupón no válido"
		valorConDescuento=valorBruto
	FinSi
```

4.  Habiendo o no aplicado e descuento, a continuación el programa aplica el impuesto de 12% correspondiente a IVA.


```psc
iva=0.12
	valorConIva=valorConDescuento+(valorConDescuento*iva)
```
5. El programa lee la variable `cant_` según lo ingresado por el usuario.

```psc
Escribir "Ingrese cantidad:"
	Leer cant_
```
6. Teniendo la información de la cantidad, el programa analiza y aplica un descuento si es que corresponde
```psc
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
```
7. Una vez aplicado el descuento por cantidad, el programa calcula el nuevo valor y lo redondea.
```psc
valorTotal=valorConIva*(1-descu_)*cant_
	valorTotalRedond = redon(valorTotal)
```
8. A continuación, el programa toma la información de envío ingresada por el usuario a partir de 4 opciones basadas en la distancia al centro de distribución suponiendo este estar basado en la Región Metropolitana, y la almacena en la variable `region`.
```psc
Escribir "Dirección de envío:"
	Escribir "1.Región Metropolitana, OHiggins o Valápraíso"
	Escribir "2.Bío-Bío, La Araucanía, Ñuble o Maule "
	Escribir "3.Atacama, Coquimbo, Los Ríos o Los Lagos"
	Escribir "4.Arica y Parinacota, Tarapacá, Antofagasta, Aysén o Magallanes"
	Leer region
```
9. Utilizando una iteración anidada de Para, el programa crea el arreglo bidimensional `costo_envio[i,j]` que sirve de base para determinar el costo de envío según peso (`i`) y región de destino (`j`)
```psc
Para i <- 1 Hasta 4 Con Paso 1 Hacer
        Para j <- 1 Hasta 4 Con Paso 1 Hacer
            calc_envio[i,j] <- (500*i)+(500*j)
        FinPara
    FinPara
```

11. Teniendo la información de la region de destino y la cantidad, el programa calcula el peso del envío que resulta de la multiplicación de una constante de 2 por la cantidad ingresada
y lo almacena en la variable `peso`
```psc
peso<-2*cant_
```
12. 
