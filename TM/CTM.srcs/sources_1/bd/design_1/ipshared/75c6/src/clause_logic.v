`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/08 19:17:02
// Design Name: 
// Module Name: clause_logic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clause_logic #(
    parameter FEAT_WIDTH = 256
)(
    input  [FEAT_WIDTH-1:0] L,    // 200-bit 的当前 Patch 特征
    input  [FEAT_WIDTH-1:0] M,    // 200-bit 的子句掩码
    output                  C     // 子句是否触发 (1=触发, 0=不触发)
);
    // 硬件逻辑：只有当 Mask 要求的位在 L 中全为 1 时，C 才为 1
    // 逻辑：如果存在某位 (M[i]=1 且 L[i]=0)，则判定失败
    assign C = ~(|(M & ~L)); 
endmodule