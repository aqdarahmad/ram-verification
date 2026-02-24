// uvm/ram-rd-driver.svh
`ifndef RAM_RD_DRIVER_SVH
`define RAM_RD_DRIVER_SVH

class ram_rd_driver extends uvm_driver #(ram_trans);
    `uvm_component_utils(ram_rd_driver)
    
    virtual ram_if vif;

    function new(string name="ram_rd_driver", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual task run_phase(uvm_phase phase);
        forever begin
            ram_trans tr;
            seq_item_port.get_next_item(tr);
            `uvm_info("DRIVER","Read driver got transaction",UVM_MEDIUM)
            seq_item_port.item_done();
        end
    endtask
endclass

`endif