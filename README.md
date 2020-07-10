# FPGA Timer

The system uses a 50 MHz clock sinal for all the synchronous components, the **CLOCK_50** sinal available in the **Terasic DE2-115** kit.
However is necessary a 1 Hz frequency sinal. The **CLKDividerN** will divide the initial frequency, **CLOCK_50**, by the constant 50 000 000 to obtain the 1 Hz frequency sinal.

