// uvm/ram-wr-driver.svh
`ifndef RAM_WR_DRIVER_SVH
`define RAM_WR_DRIVER_SVH

class ram_wr_driver extends uvm_driver #(ram_trans);
    `uvm_component_utils(ram_wr_driver)
    
    virtual ram_if vif;

    function new(string name="ram_wr_driver", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual task run_phase(uvm_phase phase);
        forever begin
            ram_trans tr;
            seq_item_port.get_next_item(tr);
            `uvm_info("DRIVER","Write driver got transaction",UVM_MEDIUM)
          
            seq_item_port.item_done();
        end
    endtask
endclass

`endif