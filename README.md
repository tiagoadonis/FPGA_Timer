# FPGA Timer

The project was divided by three essencial phases.

### First Phase:

The system uses a 50 MHz clock signal for all the synchronous components, the **CLOCK_50** signal, available in the **Terasic DE2-115** kit.
However is necessary a 1 Hz frequency signal. The **CLKDividerN** will divide the initial frequency, **CLOCK_50**, by the constant 50 000 000 to obtain 
the 1 Hz frequency signal.

The **countdown** block has three inputs, one for the clock signal provided by the previous block, one start **(SW[0] button)** to stop or start the counting function
and one restart **(SW[1] button)** to put the initial value in the timer, **59:59**. 
His outputs are, the seconds value **(LEDR[5..0])**, the minutes value **(LEDR[12..7])** and a flag **(LEDG[0])** to warn when the timer reaches the end, **00:00**.
