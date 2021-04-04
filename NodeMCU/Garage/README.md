# Garage control

This is my NodeMCU/ESP8826 garage control project.

With this, I can control my garage door, check the status of the door (open/close), check indoor temperature/humidity and outdoor temperature.

I live in Winnipeg, Canda, where temperatures can reach -40°C/-40°F up to +32°C/+89°F.

I had some problems to find the right parts for this project, specially because of the extreme cold. The reed switch was part that had more problems. After change it to a more robust (and expensive) part, everything is stable and it survived the whole winter without any problem.

The case I am using is waterproof to help with the insulation. I had to drill some holes to run the cables to the sensors and cover them with hot glue, not perfect but it works!

The ultrassonic sensor is used to detect if my car is parked inside the garage. I get that information based in the distance the sensor is reporting.



This is how the final project looks like in my garage:

![Final Project](https://github.com/allangood/home-assistant/raw/main/NodeMCU/Garage/img/Control.jpg)

This is the Fritzing project:

![Fritzing](https://github.com/allangood/home-assistant/raw/main/NodeMCU/Garage/img/Garage.png)

And this is the Home Assistant entities:

![Entities](https://github.com/allangood/home-assistant/raw/main/NodeMCU/Garage/img/HA_Entities.png)

### Parts list:

[DS18B20](https://www.banggood.com/Wholesale-DS18B20-Waterproof-Digital-Temperature-Temp-Sensor-Probe-p-53674.html?cur_warehouse=CN&rmmds=search)

[HC-SR04](https://www.banggood.com/Wholesale-Geekcreit-Ultrasonic-Module-HC-SR04-Distance-Measuring-Ranging-Transducers-Sensor-DC-5V-2-450cm-p-40313.html?cur_warehouse=CN&rmmds=search)

[3.3V Relay](https://www.banggood.com/BESTEP-1-Channel-3_3V-Low-Level-Trigger-Relay-Module-Optocoupler-Isolation-Terminal-p-1355736.html?cur_warehouse=CN&rmmds=search)

[DHT22](https://www.banggood.com/DHT22-Single-bus-Digital-Temperature-and-Humidity-Sensor-Module-Electronic-Building-Blocks-AM2302-3_3V-5V-DC-p-1457358.html?cur_warehouse=CN&rmmds=search)

[Reed Switch 01 - The cheap one](https://www.banggood.com/Recessed-Door-Window-Contacts-Magnetic-Reed-Security-Alarm-Switch-p-976715.html?cur_warehouse=CN&rmmds=search)

[Reed Switch 02 - The good one](https://www.amazon.ca/gp/product/B07DW2JGF2/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)

[Case](https://www.banggood.com/Waterproof-ABS-Plastic-Electronic-Box-White-Case-6-Size-Junction-Case-p-948279.html?cur_warehouse=CN&ID=514796&rmmds=search)
