# FPGA Timer

The project was divided by three essencial phases.

### First Phase:

The system uses a 50 MHz clock signal for all the synchronous components, the **CLOCK_50** signal, available in the **Terasic DE2-115** kit.
However is necessary a 1 Hz frequency signal. The **CLKDividerN** will divide the initial frequency, **CLOCK_50**, by the constant 50 000 000 to obtain 
the 1 Hz frequency signal.

The **countdown** block has three inputs, one for the clock signal provided by the previous block, one start **(SW[0] button)** to stop or start the counting function
and one restart **(SW[1] button)** to put the initial value in the timer, **59:59**. 
His outputs are, the seconds value **(LEDR[5..0])**, the minutes value **(LEDR[12..7])** and a flag **(LEDG[0])** to warn when the timer reaches the end, **00:00**.

### Second Phase:

In this phase there are two more blocks, the **Bin2BCD** and the **Bin7SegDecoder**. This time the two outputs from the **countdown** block, seconds and minutes, are
linked to one **Bin2BCD** each one. The last output, the end flag, was changed to announce  his value in the **LEDR[0]**.

The **Bin2BCD** will divide the seconds an minutes values in units and dozens. After this, each value is sent to the **Bin7SegDecoder** inputs to show the respective
values in the seven-segment displays.

### Third Phase:

