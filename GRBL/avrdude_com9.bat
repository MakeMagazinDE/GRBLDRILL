echo AVRdude-Batch f�r MikroElektronika "MINI-AT"-Modul auf COM9 (ggf. anzupassen!)
echo Das Modul ben�tigt zus�tzliche VCP-Treiber f�r den enthaltenen FTDI-USB-Baustein

avrdude -C "avrdude.conf" -pm328p -cstk500v1 -V -P COM9 -b57600 -D -U flash:w:"GRBL.HEX":i 