// uvm/ram-wr-agent.svh
`ifndef RAM_WR_AGENT_SVH
`define RAM_WR_AGENT_SVH

class ram_wr_agent extends uvm_agent;
    `uvm_component_utils(ram_wr_agent)

    ram_wr_sequencer sequencer;
    ram_wr_driver    driver;
    ram_wr_monitor   monitor;

    function new(string name="ram_wr_agent", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        sequencer = ram_wr_sequencer::type_id::create("sequencer", this);
        driver    = ram_wr_driver::type_id::create("driver", this);
        monitor   = ram_wr_monitor::type_id::create("monitor", this);
    endfunction
endclass

`endif