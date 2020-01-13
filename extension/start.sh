#!/bin/bash

if (( $# < 1 ));
then 
    echo "--------"
    echo "- HELP -"
    echo "--------"
    echo "- USAGE -"
    echo "- bash $0 PRIVATE_KEY PUBLIC_KEY -";
    echo "* Se le recomienda generar por usted mismo la llave privada y publica para que no tengais problemas con respecto a su seguridad."

else
    #Extraemos las dos llaves publicas de la ruta que nos especifiquen
    PRV_K=`cat $1 | tr '\n' '_' | sed s/"_"//g`
    PUB_K=`cat $2 | tr '\n' '_' | sed s/"_"//g`

    (replace "{REEMPLACE PRV}" "$PRV_K" "{REEMPLACE PUB}" "$PUB_K" < swap.js.plant) > swap.js

    KEY=""
    while [[ $KEY != "x" ]]; do
    	echo "Escriba x para cancelar la configuracion DoubleSec"
    	read KEY
    done

    rm swap.js
fi;