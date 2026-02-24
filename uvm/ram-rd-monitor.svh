// uvm/ram-rd-monitor.svh
`ifndef RAM_RD_MONITOR_SVH
`define RAM_RD_MONITOR_SVH

class ram_rd_monitor extends uvm_monitor;
    `uvm_component_utils(ram_rd_monitor)

    virtual ram_if vif;

    function new(string name="ram_rd_monitor", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual task run_phase(uvm_phase phase);
        forever begin
            `uvm_info("MONITOR","Monitoring read transaction",UVM_MEDIUM)
            #10;
        end
    endtask
endclass

`endif