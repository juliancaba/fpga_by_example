<?xml version="1.0" encoding="UTF-8"?>
<!-- Product Version: Vivado v2014.4 (64-bit)              -->
<!--                                                         -->
<!-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.   -->

<Project Version="7" Minor="2" Path="/home/abaldea/trabajo/demostrador_reconf/2_base/base_reconf/base_reconf.xpr">
  <DefaultLaunch Dir="$PRUNDIR"/>
  <Configuration>
    <Option Name="Id" Val="d6be1cefa79443fa90cda26261c9603b"/>
    <Option Name="Part" Val="xc7z020clg484-1"/>
    <Option Name="CompiledLibDir" Val="$PCACHEDIR/compile_simlib"/>
    <Option Name="TargetLanguage" Val="VHDL"/>
    <Option Name="BoardPart" Val="em.avnet.com:zed:part0:1.2"/>
    <Option Name="ActiveSimSet" Val="sim_1"/>
    <Option Name="DefaultLib" Val="xil_defaultlib"/>
    <Option Name="IPRepoPath" Val="$PPRDIR/ip_repo"/>
  </Configuration>
  <FileSets Version="1" Minor="31">
    <FileSet Name="sources_1" Type="DesignSrcs" RelSrcDir="$PSRCDIR/sources_1">
      <Filter Type="Srcs"/>
      <File Path="$PSRCDIR/sources_1/bd/design_1/design_1.bd">
        <FileInfo>
          <Attr Name="UsedIn" Val="synthesis"/>
          <Attr Name="UsedIn" Val="implementation"/>
          <Attr Name="UsedIn" Val="simulation"/>
        </FileInfo>
        <CompFileExtendedInfo CompFileName="design_1.bd" FileRelPathName="ip/design_1_axi_read_memory_driver_0_0/design_1_axi_read_memory_driver_0_0.xci"/>
        <CompFileExtendedInfo CompFileName="design_1.bd" FileRelPathName="ip/design_1_processing_system7_0_axi_periph_0/design_1_processing_system7_0_axi_periph_0.xci"/>
        <CompFileExtendedInfo CompFileName="design_1.bd" FileRelPathName="ip/design_1_axi2fifo_0_0/design_1_axi2fifo_0_0.xci"/>
        <CompFileExtendedInfo CompFileName="design_1.bd" FileRelPathName="ip/design_1_axi_interconnect_0_0/design_1_axi_interconnect_0_0.xci"/>
        <CompFileExtendedInfo CompFileName="design_1.bd" FileRelPathName="ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xci"/>
        <CompFileExtendedInfo CompFileName="design_1.bd" FileRelPathName="hdl/design_1.vhd"/>
        <CompFileExtendedInfo CompFileName="design_1.bd" FileRelPathName="design_1_ooc.xdc"/>
        <CompFileExtendedInfo CompFileName="design_1.bd" FileRelPathName="hw_handoff/design_1.hwh"/>
        <CompFileExtendedInfo CompFileName="design_1.bd" FileRelPathName="hw_handoff/design_1_bd.tcl"/>
        <CompFileExtendedInfo CompFileName="design_1.bd" FileRelPathName="ip/design_1_auto_pc_1/design_1_auto_pc_1.xci"/>
        <CompFileExtendedInfo CompFileName="design_1.bd" FileRelPathName="ip/design_1_fifo_zipFactory_0_0/design_1_fifo_zipFactory_0_0.xci"/>
        <CompFileExtendedInfo CompFileName="design_1.bd" FileRelPathName="ip/design_1_rst_processing_system7_0_102M_0/design_1_rst_processing_system7_0_102M_0.xci"/>
        <CompFileExtendedInfo CompFileName="design_1.bd" FileRelPathName="ip/design_1_auto_pc_0/design_1_auto_pc_0.xci"/>
      </File>
      <File Path="$PSRCDIR/sources_1/bd/design_1/hdl/design_1_wrapper.vhd">
        <FileInfo>
          <Attr Name="UsedIn" Val="synthesis"/>
          <Attr Name="UsedIn" Val="simulation"/>
        </FileInfo>
      </File>
      <Config>
        <Option Name="DesignMode" Val="RTL"/>
        <Option Name="TopModule" Val="design_1_wrapper"/>
        <Option Name="TopAutoSet" Val="TRUE"/>
      </Config>
    </FileSet>
    <FileSet Name="constrs_1" Type="Constrs" RelSrcDir="$PSRCDIR/constrs_1">
      <Filter Type="Constrs"/>
      <Config>
        <Option Name="ConstrsType" Val="XDC"/>
      </Config>
    </FileSet>
    <FileSet Name="sim_1" Type="SimulationSrcs" RelSrcDir="$PSRCDIR/sim_1">
      <Config>
        <Option Name="DesignMode" Val="RTL"/>
        <Option Name="TopModule" Val="design_1_wrapper"/>
        <Option Name="TopLib" Val="xil_defaultlib"/>
        <Option Name="TopAutoSet" Val="TRUE"/>
        <Option Name="SrcSet" Val="sources_1"/>
      </Config>
    </FileSet>
  </FileSets>
  <Simulators>
    <Simulator Name="XSim">
      <Option Name="Description" Val="Vivado Simulator"/>
      <Option Name="CompiledLib" Val="0"/>
    </Simulator>
    <Simulator Name="ModelSim">
      <Option Name="Description" Val="QuestaSim/ModelSim Simulator"/>
    </Simulator>
    <Simulator Name="IES">
      <Option Name="Description" Val="Incisive Enterprise Simulator (IES)"/>
    </Simulator>
    <Simulator Name="VCS">
      <Option Name="Description" Val="Verilog Compiler Simulator (VCS)"/>
    </Simulator>
  </Simulators>
  <Runs Version="1" Minor="9">
    <Run Id="synth_1" Type="Ft3:Synth" SrcSet="sources_1" Part="xc7z020clg484-1" ConstrsSet="constrs_1" Description="Vivado Synthesis Defaults" State="current">
      <Strategy Version="1" Minor="2">
        <StratHandle Name="Vivado Synthesis Defaults" Flow="Vivado Synthesis 2014">
          <Desc>Vivado Synthesis Defaults</Desc>
        </StratHandle>
        <Step Id="synth_design"/>
      </Strategy>
    </Run>
    <Run Id="impl_1" Type="Ft2:EntireDesign" Part="xc7z020clg484-1" ConstrsSet="constrs_1" Description="Vivado Implementation Defaults" State="current" SynthRun="synth_1">
      <Strategy Version="1" Minor="2">
        <StratHandle Name="Vivado Implementation Defaults" Flow="Vivado Implementation 2014">
          <Desc>Vivado Implementation Defaults</Desc>
        </StratHandle>
        <Step Id="init_design"/>
        <Step Id="opt_design"/>
        <Step Id="power_opt_design"/>
        <Step Id="place_design"/>
        <Step Id="post_place_power_opt_design"/>
        <Step Id="phys_opt_design"/>
        <Step Id="route_design"/>
        <Step Id="post_route_phys_opt_design"/>
        <Step Id="write_bitstream"/>
      </Strategy>
    </Run>
  </Runs>
</Project>
