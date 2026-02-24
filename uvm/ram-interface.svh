// uvm/ram-interface.svh
`ifndef RAM_INTERFACE_SVH
`define RAM_INTERFACE_SVH

interface ram_if #(parameter DATA_WIDTH=8, ADDR_WIDTH=4);
    logic clk;
    logic rst;
    logic cs;
    logic w_en;
    logic r_en;
    logic [ADDR_WIDTH-1:0] w_addr, r_addr;
    logic [DATA_WIDTH-1:0] w_data;
    logic [DATA_WIDTH-1:0] r_data;
endinterface

`endif