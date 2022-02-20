This project is an addon for MGNZ Annealer that makes it complete. It contains all necessary 3D-printed parts to make it fully operational and automatic. It can be also easily adjusted for different cartridge calibers.

Information about MGNZ Annealer can be found at <https://www.mgnz-makes.com/>. 

Information about the case feeder can be found at <https://github.com/BF556/Feeder>.

Updated firmware sources can be found at <https://github.com/stro/NZHS_ANNEALER>.

# Parts

You will need all parts listed at <https://www.mgnz-makes.com/parts-list> except the OLED display and the solenoid. You'll need a combined tank/pump and combined radiator/fan, as well as additional fan.

In addition to that, you'll need the following:

* Assortment of M2, M3, M4 nuts, bolts, and washers ([Example](https://smile.amazon.com/gp/product/B07H4MG7TC/)) and one M2.5x6 bolt for the servo. 

* A 128x64 OLED Display ([Example](https://smile.amazon.com/gp/product/B08KY21SR2/))

* 8x3mm magnets ([Example](https://smile.amazon.com/gp/product/B07CPV7X8Y/))

* Wires and dupont jumper wires.

* A 5.5x2.5mm power connector ([Example](https://smile.amazon.com/gp/product/B07QLZ9VWL/)) to power the case feeder.

* 2 connector fittings ([Example](https://smile.amazon.com/gp/product/B00CHHYRT4/)).

* 6 worm gear clamps ([Example](https://www.homedepot.com/p/Everbilt-1-2-1-1-4-in-Stainless-Steel-Hose-Clamp-6712595/202309385)).

* Hot glue.

* Super glue.

* A computer that can run Arduino IDE and a USB cable to connect to Arduino board. 

The case collator also requires:

* A 6mm hex coupler ([Example](https://smile.amazon.com/gp/product/B07K7FP2JT/)).

Case feeder requires:

* A 12V 10rpm motor ([Example](https://smile.amazon.com/gp/product/B07YBXMTWC/)).

* An 18mm proximity sensor ([Example](https://www.ebay.com/itm/143679022308)).

* An 8mm hex coupler ([Example](https://smile.amazon.com/gp/product/B08M45D6F2/)).

* A motor speed controller ([Example](https://smile.amazon.com/gp/product/B08BJ4WQCV/)).

* A 12V power switch ([Example](https://smile.amazon.com/gp/product/B07R5DMLXL/)).

* A relay ([Example](https://smile.amazon.com/gp/product/B08PNHHC65/)).


# Assembly instructions

First, print all parts of the annealer enclosure. The maximum size of any part is 250mm so you'll need a larger 3D-printer such as Creality CR-10. It will take several days to finish printing all that. 
Use 0.2mm layers. Use supports whenever magnet holes or bolt holes are printed on the bed side. You don't really need supports, but it will make your printed model nicer. Most parts will benefit from using brims for increased bed plate adhesion.   

All parts can be printed with PLA with the exception of one part: the coil insert should be printed with high-temperature resistant filament like polycarbonate. Don't print it with PLA, it's better to leave the coil alone.

Print caliber-specific parts only for calibers you're going to use. 

Install Arduino UI on your computer, connect the board, compile and upload the firmware.

Use a provided coil guide to make a coil out of 1/8" copper tube.

Put M4 bolts into all slots in 3D-printed parts and use hot glue to fix them in place. It's not really necessary but it will make assembling much faster and problem-free.

Assemble! (I may provide more detailed instructions later)

Using super glue, put magnets into slots and fix them in place. Keep attention to magnet polarity, once you have them in place, you're going to use the same orientation for everything.

Start annealing.
