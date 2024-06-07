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
- Si el cliente compra más de un artículo, aplicar un descuento por cantidad.
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

## 4.  Habiendo o no aplicado e descuento, a continuación el programa aplica el impuesto de 12% correspondiente a IVA.


```psc
iva=0.12
	valorConIva=valorConDescuento+(valorConDescuento*iva)
```


