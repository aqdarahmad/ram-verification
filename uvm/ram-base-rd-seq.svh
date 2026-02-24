// uvm/ram-base-rd-seq.svh
`ifndef RAM_BASE_RD_SEQ_SVH
`define RAM_BASE_RD_SEQ_SVH

class ram_base_rd_seq extends uvm_sequence #(ram_trans);
    `uvm_object_utils(ram_base_rd_seq)

    function new(string name="ram_base_rd_seq");
        super.new(name);
    endfunction

    virtual task body();
        ram_trans tr = ram_trans::type_id::create("tr");
        tr.kind = `RAM_READ;
        tr.addr = $urandom_range(0,15);
        `uvm_info("SEQ","Read sequence generated a transaction",UVM_MEDIUM)
        start_item(tr);
        finish_item(tr);
    endtask
endclass

`endif