// uvm/ram-env.svh
`ifndef RAM_ENV_SVH
`define RAM_ENV_SVH

class ram_env extends uvm_env;
    `uvm_component_utils(ram_env)

    ram_wr_agent wr_agent;
    ram_rd_agent rd_agent;
    ram_scoreboard sb;

    function new(string name="ram_env", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        wr_agent = ram_wr_agent::type_id::create("wr_agent", this);
        rd_agent = ram_rd_agent::type_id::create("rd_agent", this);
        sb       = ram_scoreboard::type_id::create("scoreboard", this);
    endfunction
endclass

`endif