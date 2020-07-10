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

In this last phase the number and name of blocks are the same as the second phase. Only one suffer some changes in his inputs, the **countdown**. There are more four
inputs, one for increase the minutes value **(KEY[3])**, one to decrease **(KEY[2])**, one to increase the seconds value **(KEY[1])** and one to decrease
**(KEY[0])**. This entrances only work if the start **(SW[0] button)** has the value 0. 

<br>

The modulation of every block was made in VHDL and the implementation/debug was in the **Terasic DE2-11** kit. 

<img src="https://lh3.googleusercontent.com/proxy/rPbuXlo8JzOEpEfVprYUDxZZvQNza9sPymrR767m7iVJPZGowUdOwozTMdlBSZJ0oAxWazz_PTciqxpSDwoBgi5tST9ddSOQTWBNFWa4GMFs9TYa" width="260" heigth="200" align="center">
