Cómo sintetizar el proyecto (... y no morir en el intento)
----------------------------------------------------------

1. En el directorio imports localizado en el raiz del repo deberemos importar el repo de drivers axi, para ello basta con ejecutar desde dicho directorio:

      	         make -f import.mk


2. En factory.dpr se encuentra el proyecto a sintetizar junto con los scripts que realizan esta tarea.


3. Una vez creados los bitstreams, se deberá crear el software necesario para probar la aplicación. 

   3.1 Se crea la aplicación de ejemplo hello world con el nombre TestApp (obligatorio).

   3.2 Se elimina el fichero helloword.c y se importa el fichero TestApp.c del directorio src/sw. Este software desactiva el PCAP.


4. Para desplegar la aplicación se ha creado un script que utiliza el hardware manager de Xilinx para desplegar el bitstream y el xmd para descargar el software y los bitstreams parciales a la DDR. Previamente los bitstreams parciales son modificados eliminando la cabecera inicial y se almacenen en la DDR en little-endian, ya que la factoría puede atender ambas codificaciones (little-endian y big-endian).

   4.1 En primer lugar se debe cargar la ruta del ejecutable xmd, este software es proporcionado con las versiones ISE de Xilinx, bastará con ejecutar lo siguiente.
       	  	    . /directorio_ISE/settings64.sh

   4.2 Encendemos la placa de prototipado y abrimos la uart (minicom) para observar que el PCAP se ha desactivado, punto en el que se podrá reconfigurar.

   4.3 Para desplegar toda la aplicación ejecutamos.
       	    
			make -f deploy.mk


NOTA: Los diseños 1 y 2 son válidos para la placa ZC702, mientras que el diseño 3 es válida para la placa Zedboard (Si algunos de esos diseños quiere ser utilizados en otra placa se deberá actualizar el mismo, en concreto el componente ps7)

