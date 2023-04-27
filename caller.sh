#!/bin/bash
# Script de servicio creacion dinamica de rutas estaticas

WDIR=$PWD
COMPROBADOR="$WDIR/scripts/comprobador.sh"
CONTROLADOR="$WDIR/scripts/controlador.sh"
CAPTURADOR="$WDIR/scripts/capturador.sh"
ENRUTADOR="$WDIR/scripts/enrutador.sh"


case "$1" in
  start)
    echo "$(date +"[%m/%d/%Y %H:%M:%S]") Inicio script $COMPROBADOR"
    $COMPROBADOR
    echo "$(date +"[%m/%d/%Y %H:%M:%S]") Inicio script $CONTROLADOR"
    $CONTROLADOR &
    echo "$(date +"[%m/%d/%Y %H:%M:%S]") Inicio script $CAPTURADOR"
    $CAPTURADOR &
    echo "$(date +"[%m/%d/%Y %H:%M:%S]") Inicio script $ENRUTADOR"
    $ENRUTADOR &
    ;;
  stop)
    echo "$(date +"[%m/%d/%Y %H:%M:%S]") Detencion script $COMPROBADOR"
    pkill -f $COMPROBADOR
    echo "$(date +"[%m/%d/%Y %H:%M:%S]") Detencion script $CONTROLADOR"
    pkill -f $CONTROLADOR
    echo "$(date +"[%m/%d/%Y %H:%M:%S]") Detencion script $CONTROLADOR"
    pkill -f $CONTROLADOR
    echo "$(date +"[%m/%d/%Y %H:%M:%S]") Detencion script $CONTROLADOR"
    pkill -f $CONTROLADOR
    exit 0
    ;;
  *)
    echo "Uso: /etc/init.d/captura_ips {start|stop}"
    exit 1
    ;;
esac
