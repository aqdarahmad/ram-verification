// uvm/ram-base-test.svh
`ifndef RAM_BASE_TEST_SVH
`define RAM_BASE_TEST_SVH

class ram_base_test extends uvm_test;
    `uvm_component_utils(ram_base_test)

    ram_env env;

    function new(string name="ram_base_test", uvm_component parent=null);
        super.new(name,parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        env = ram_env::type_id::create("env", this);
    endfunction

    virtual task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        `uvm_info("TEST","Starting RAM UVM Test",UVM_LOW)
        #100;
        env.sb.report();
        `uvm_info("TEST","Finished RAM UVM Test",UVM_LOW)
        phase.drop_objection(this);
    endtask
endclass

`endif