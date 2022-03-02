/*solución*/

USE tienda;

/*1. Lista el nombre de todos los productos que hay en la tabla producto.*/

select nombre from producto
ORDER BY nombre

/*2. Lista los nombres y los precios de todos los productos de la tabla producto.*/

select nombre, precio from producto
ORDER BY precio

/*3. Lista todas las columnas de la tabla producto.*/

select * from producto

/*4. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).*/

select nombre, precio, precio * 1.13 as USD from producto
ORDER BY precio

/*5. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza
los siguientes alias para las columnas: nombre de producto, euros, dólares.*/

select nombre as [nombre de producto], precio as euros, precio * 1.13 as dólares from producto
ORDER BY euros

/*6. Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a
mayúscula.*/

select UPPER(nombre) as [Nombre de producto], precio from producto

/*7. Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a
minúscula.*/

select LOWER(nombre) as [Nombre de producto], precio from producto

/*8. Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los
dos primeros caracteres del nombre del fabricante.*/

select nombre, UPPER(LEFT(nombre, 2)) as MAY from fabricante

/*9. Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del
precio.*/

select nombre, CEILING(precio) as precio from producto
ORDER BY precio

/*0. Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio
para mostrarlo sin ninguna cifra decimal.*/

select nombre, CAST(precio as INT) as precio from producto

/*11. Lista el código de los fabricantes que tienen productos en la tabla producto.*/

select producto.nombre, producto.codigo_fabricante from fabricante
INNER JOIN producto
ON fabricante.codigo = producto.codigo_fabricante
ORDER BY codigo_fabricante

/*12. Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que
aparecen repetidos.*/

select DISTINCT producto.codigo_fabricante from fabricante
INNER JOIN producto
ON fabricante.codigo = producto.codigo_fabricante
ORDER BY codigo_fabricante

/*13. Lista los nombres de los fabricantes ordenados de forma ascendente.*/

select nombre from fabricante
ORDER BY nombre ASC

/*14. Lista los nombres de los fabricantes ordenados de forma descendente*/

select nombre from fabricante
ORDER BY nombre DESC

/*15. Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en
segundo lugar por el precio de forma descendente. */

select nombre, precio from producto
ORDER BY precio DESC, nombre ASC