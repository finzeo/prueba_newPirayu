#!/bin/bash
#SBATCH --job-name=test # nombre para identificar el trabajo. Por defecto es el nombre del script # Autor-SimMall-NumCaso-NumMalla
#SBATCH --ntasks=64 # cantidad de cores pedidos
##SBATCH --nodes=1 # cantidad de nodos pedidos
#SBATCH --ntasks-per-node=32 # cantidad de cores por nodo, para que agrupe o distribuya procesos
#SBATCH --cpus-per-task=1
# la linea siguiente es ignorada por Slurm porque empieza con ##
##SBATCH --mem-per-cpu=4G # cantidad de memoria por core
#SBATCH --output=trabajo-%j-salida.txt # la salida y error estandar van a este archivo. Si no es especifca es slurm-%j.out (donde %j es el Job ID)
#SBATCH --error=trabajo-%j-error.txt # si se especifica, la salida de error va por separado a este archivo
#SBATCH --time=13-23 # tiempo máximo de ejecución, el formato es: dias-horas / dias-horas:minutos / horas:minutos:segundos
##SBATCH --nodelist=n-8,n-9,n-10,n-11
#SBATCH --partition=secondary

# aqui comienzan los comandos
# code_saturne run --param setup.xml
# make preparar
echo "Esto es una prueba"
