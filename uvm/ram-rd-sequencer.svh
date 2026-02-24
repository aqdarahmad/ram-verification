// uvm/ram-rd-sequencer.svh
`ifndef RAM_RD_SEQUENCER_SVH
`define RAM_RD_SEQUENCER_SVH

class ram_rd_sequencer extends uvm_sequencer #(ram_trans);
    `uvm_component_utils(ram_rd_sequencer)

    function new(string name="ram_rd_sequencer", uvm_component parent=null);
        super.new(name,parent);
    endfunction
endclass

`endif