// uvm/ram-trans.svh
`ifndef RAM_TRANS_SVH
`define RAM_TRANS_SVH

class ram_trans extends uvm_sequence_item;
    rand bit [3:0] addr;
    rand bit [7:0] data;
    rand bit kind;

    `uvm_object_utils(ram_trans)

    function new(string name="ram_trans");
        super.new(name);
    endfunction

    function void do_print(uvm_printer printer);
        `uvm_info("TRANS", $sformatf("Addr=%0h Data=%0h Kind=%0d", addr, data, kind), UVM_MEDIUM)
    endfunction
endclass

`endif