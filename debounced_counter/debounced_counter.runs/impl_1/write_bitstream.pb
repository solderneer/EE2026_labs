
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
Rule violation (%s) %s - %s
20*drc2
CFGBVS-12default:default2G
3Missing CFGBVS and CONFIG_VOLTAGE Design Properties2default:default2�
�Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2�
�Net d/ff1/CLK is a gated clock net sourced by a combinational pin d/ff1/LED_ARRAY[7]_i_2/O, cell d/ff1/LED_ARRAY[7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
PLHOLDVIO-22default:default2O
;Non-Optimal connections which could lead to hold violations2default:default2�
�A LUT d/ff1/LED_ARRAY[7]_i_2 is driving clock pin of 8 cells. This could lead to large hold time violations. First few involved cells are:
    LED_ARRAY_reg[0] {FDRE}
    LED_ARRAY_reg[1] {FDRE}
    LED_ARRAY_reg[2] {FDRE}
    LED_ARRAY_reg[3] {FDRE}
    LED_ARRAY_reg[4] {FDRE}
2default:defaultZ23-20h px� 
f
DRC finished with %s
1905*	planAhead2(
0 Errors, 3 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
g
Writing bitstream %s...
11*	bitstream2*
./ledarray_counter.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:132default:default2
00:00:172default:default2
1341.9692default:default2
321.2702default:defaultZ17-268h px� 
m
Unable to parse hwdef file %s162*	vivadotcl2*
ledarray_counter.hwdef2default:defaultZ4-395h px� 


End Record