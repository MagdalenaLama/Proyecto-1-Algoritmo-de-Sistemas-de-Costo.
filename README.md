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
- Aplicar un descuento al producto si es aplicable (por ejemplo, si el cliente tiene un cupón de descuento).
- Aplicar impuestos al producto (por ejemplo, el IVA u otros impuestos).
- Si el cliente compra más de un artículo, aplicar un descuento por cantidad.
- Calcular el costo de envío basado en el destino y el peso del paquete.
- Calcular el costo final del producto sumando el precio con descuento, impuestos, descuento por cantidad y costo de envío.
- Mostrar el costo final del producto, desglosando los diferentes componentes (descuentos, impuestos, descuento por cantidad y costo de envío).

## 4. Solución paso a paso
- `cupon` se define como **Cadena** (_Sólo es válido si es exactamente "DESCUENTO10"_)
- `valorBruto`, `valorConDescuento`, `iva`, `valorConIva`, `valorTotal`, `valorTotalRedond`,`cant_`, `descu_` se definen como **Real**
