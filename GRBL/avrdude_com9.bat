echo AVRdude-Batch für MikroElektronika "MINI-AT"-Modul auf COM9 (ggf. anzupassen!)
echo Das Modul benötigt zusätzliche VCP-Treiber für den enthaltenen FTDI-USB-Baustein

avrdude -C "avrdude.conf" -pm328p -cstk500v1 -V -P COM9 -b57600 -D -U flash:w:"GRBL.HEX":i 