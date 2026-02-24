// uvm/ram-scoreboard.svh
`ifndef RAM_SCOREBOARD_SVH
`define RAM_SCOREBOARD_SVH

class ram_scoreboard extends uvm_component;
    `uvm_component_utils(ram_scoreboard)

    int passed;
    int failed;

    function new(string name="ram_scoreboard", uvm_component parent=null);
        super.new(name,parent);
        passed = 0;
        failed = 0;
    endfunction

    task check(ram_trans tr, bit valid);
        if (valid) passed++; else failed++;
        `uvm_info("SCOREBOARD",$sformatf("Transaction checked: Passed=%0d Failed=%0d", passed, failed), UVM_MEDIUM)
    endtask

    task report();
        `uvm_info("SCOREBOARD_REPORT",$sformatf("Final Scoreboard: Passed=%0d Failed=%0d", passed, failed), UVM_HIGH)
    endtask
endclass

`endif