set bd sch
bd::create_bd $bd

# PS7
set ps [ps7::create_ip ps_0 [list hp0 1]]

set dma [axi_dma::create_ip dma_0 [list sg {0 0} data_width {32} tdata_width {8} burst_size {16}]]
set fifo_1 [axis_data_fifo::create_ip fifo_0 [list depth 512]]

# Creates the axi interconnect instance and connects the buses
set axiconnect_ip [bd::automate_bus axi4 Auto $ps/M_AXI_GP0 $dma/S_AXI_LITE]

# Creates the smc interconnect instance for HP and connects all HPC buses
# The smartconnect IP is reused for every new connection
set smartconnect_ip [bd::automate_bus axi4 Auto $dma/M_AXI_MM2S $ps/S_AXI_HP0]
bd::automate_bus axi4 $smartconnect_ip $dma/M_AXI_S2MM $ps/S_AXI_HP0


# DMA >> FIFO_1
bd::connect_ports $dma/M_AXIS_MM2S $fifo_1/S_AXIS

# FIFO_1 >> DMA
bd::connect_ports $fifo_1/M_AXIS $dma/S_AXIS_S2MM


bd::automate_clock $fifo_1/s_axis_aclk

bd::regenerate_bd
bd::wrap_bd
