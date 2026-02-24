// uvm/ram-wr-sequencer.svh
`ifndef RAM_WR_SEQUENCER_SVH
`define RAM_WR_SEQUENCER_SVH

class ram_wr_sequencer extends uvm_sequencer #(ram_trans);
    `uvm_component_utils(ram_wr_sequencer)

    function new(string name="ram_wr_sequencer", uvm_component parent=null);
        super.new(name,parent);
    endfunction
endclass

`endif