module dual_port_ram 
#(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4,
    parameter DEPTH = 16
)
(
    input  wire                     clk,
    input  wire                     rst,      // Active High
    input  wire                     cs,
    input  wire                     w_en,
    input  wire                     r_en,
    input  wire [ADDR_WIDTH-1:0]    w_addr,
    input  wire [ADDR_WIDTH-1:0]    r_addr,
    input  wire [DATA_WIDTH-1:0]    w_data,
    output reg  [DATA_WIDTH-1:0]    r_data
);

    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];
    integer i;

    always @(posedge clk) begin

        // Synchronous Reset
        if (rst) begin
            r_data <= 0;
            for (i = 0; i < DEPTH; i = i + 1)
                mem[i] <= 0;
        end
        else if (cs) begin

            // Write Operation
            if (w_en) begin
                mem[w_addr] <= w_data;
            end

            // Read Operation
            if (r_en) begin
                r_data <= mem[r_addr];
            end

        end

    end

endmodule