// uvm/ram-rd-agent.svh
`ifndef RAM_RD_AGENT_SVH
`define RAM_RD_AGENT_SVH

class ram_rd_agent extends uvm_agent;
    `uvm_component_utils(ram_rd_agent)

    ram_rd_sequencer sequencer;
    ram_rd_driver    driver;
    ram_rd_monitor   monitor;

    function new(string name="ram_rd_agent", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        sequencer = ram_rd_sequencer::type_id::create("sequencer", this);
        driver    = ram_rd_driver::type_id::create("driver", this);
        monitor   = ram_rd_monitor::type_id::create("monitor", this);
    endfunction
endclass

`endif