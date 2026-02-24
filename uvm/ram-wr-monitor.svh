// uvm/ram-wr-monitor.svh
`ifndef RAM_WR_MONITOR_SVH
`define RAM_WR_MONITOR_SVH

class ram_wr_monitor extends uvm_monitor;
    `uvm_component_utils(ram_wr_monitor)

    virtual ram_if vif;

    function new(string name="ram_wr_monitor", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual task run_phase(uvm_phase phase);
        forever begin
            `uvm_info("MONITOR","Monitoring write transaction",UVM_MEDIUM)
            #10;
        end
    endtask
endclass

`endif