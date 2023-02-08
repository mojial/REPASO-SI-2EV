#!/bin/bash
typeset -i suma
suma=4+6
echo $suma

read -p "Adivina mi edad :" edad
if [ $edad -eq $edad ];then
    echo "La has acertado!"
else
    echo "No la has acertado."
    echo "Vuelve a intentarlo."
fi

if [ $# -eq 2 ];then
    if [ $1 = $2 ];then
        echo "Son iguales"
    else
        echo "Son diferentes"
    fi
    exit
fi
echo "No has intrroducido 2 parámetros"

if [ $primer -ne segundo ];then
    echo "$primer no es igual a $segundo"

cadena1=$1
cadena2=$2

if [ $cadena1 = $cadena2 ];then
    echo "Las cadenas de texto son iguales."
else
    echo "Las cadenas de texto son distintas."
fi

# Ambas formas son equivalentes
num_lineas=$(cat archivo.txt | wc -l)
num_lineas2=`cat archivo.txt | wc -l`

# Por lo tanto los resultados deberían coincidir
if [ $num_lineas -eq $num_lineas2 ];then
    echo "El archivo contiene $num_lineas líneas"

read -p "Introduce un número entero o decimal: " num1
read -p "Introduce otro número entero o decimal: " num2

echo "La suma es:" $(echo "$num1 + $num2" | bc)
echo "La resta es:" $(echo "$num1 - $num2" | bc)
echo "La multiplicación es:" $(echo "$num1 * $num2" | bc)
echo "La división es:" $(echo "scale=1;$num1 / $num2" | bc)

clear
echo "Bienvenido a mi programa"
echo "========================"
echo "Elige una opción:"
echo "1) Ejecutar firefox"
echo "2) Ejecutar chrome"
echo "3) Ejecutar operagx"
echo "4) Salir"
read respuesta
echo "La opción elegida es: " $respuesta
case $respuesta in
1) firefox & ;;
2) ls - l ;;
3) man operagx ;;
4) exit ;;
*) echo "No has seleccionado una opción correcta";;
esac

edad=25
read -p "Adivina mi edad:" valor

while [ $valor -ne $edad ]; do
    echo "No has acertado."
    echo "Vuelve a intentarlo."
    read - p "Adivina mi edad:" valor
done

echo "La has acertado!"

cont=5

until [ $cont -lt 1 ]; do
    echo "Vuelta número $cont"
    let cont=cont-1
done

for (( i=1; i<=5; ++1 ))
do
    echo "Bienvenido por ${i}ᵃ vez"
done

# Son equivalentes
# los siguientes for:
# for i in 1 2 3 4 5
# for i in `seq 1 5`
for i in {1..5}
do 
    echo $i
done

# Múltiplos de 3 hasta el 60
for i in {3..60..3}
do
    echo $if
done


contador=1
while read linea; do 
    echo "Línea $contador : $linea"
    contador=$((contador+1))
done < municipios.txt

read -p "Introduce edad: " edad

if [ $edad -ge 18 ]
then 
        echo "Eres mayor de edad"
else
        echo "Eres mennor de edad"
fi

read -p "Introduce tu edad: " edad

test $edad -ge 18 && echo "Eres mayor de edad" || echo "Eres menor de edad"

