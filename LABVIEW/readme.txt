STEP_MAKRO_GCODE.vi
===================

LabVIEW-Steuerungsprogramm für GRBL-STEP von C. Meyer, cm@heise.de

Dieses nützliche LabVIEW-Programm erübrigt in vielen Fällen die Anschaffung
einer CAM-Software. Es liest HPGL-1-, Excellon-Bohr- und G-Code-Dateien ein,
berechnet ggf. Offsets und Skalierungen und gibt G-Codes an die GRBL-STEP-Platine aus
(seriell, Resource bitte entspr. COM-Port des Moduls einstellen).

Es kann Bohr-Raster, Rechtecke und Kreise in G-Code auch selbst erstellen, auch unter
Berücksichtigung des Werkzeug-Durchmessers. Die Visualisierung der Bohrpunkte oder
des Fräswegs erfolgt in einem simplen XY-Diagramm.

Ein Gamepad oder Joystick kann als Handsteuerung dienen, etwa um den Bohrer/Fräser
auf eine bestimmte Position zu bringen (z.B. Referenzloch) und die Offsets auf Knopfdruck
automatisch zu setzen. Einige Gamepad-Buttons sind mit Funktionen belegt.

Der gelbe XY-Cursor lässt sich zu diesem Zweck mit der Maus auf einen bestimmten Punkt 
verschieben, der dann als Referenz dient.

Zum Ausführen wird LabVIEW 6.1 (oder neuer) benötigt, das als Vollversion der c't 11/2007 
auf DVD beilag (läuft mit kleinen Abstrichen auch auf Windows 7). Nähere Hinweise dazu auf 

http://www.ct-lab.de/

