module instr_memory(
    input [31:0] addr,
    //output pc_en,
    output [31:0] prog
);

    reg [7:0] INST_memory [0:1023];

    // ./INST_rom.txt
//    initial $readmemh("test_instructions.txt", INST_memory);
    
    /*initial begin
        {INST_memory[0],    INST_memory[1], INST_memory[2], INST_memory[3]} =32'h00900513;
        {INST_memory[4],    INST_memory[5], INST_memory[6], INST_memory[7]} =32'h00600593;
        {INST_memory[8],    INST_memory[9], INST_memory[10],INST_memory[11]}=32'h00b50633;
        {INST_memory[12],   INST_memory[13],INST_memory[14],INST_memory[15]}=32'h40b506b3;
        {INST_memory[16],   INST_memory[17],INST_memory[18],INST_memory[19]}=32'h00d67733;
        {INST_memory[20],   INST_memory[21],INST_memory[22],INST_memory[23]}=32'h00000000;
    end*/

    assign prog = { INST_memory[addr], 
                    INST_memory[addr+1],
                    INST_memory[addr+2],
                    INST_memory[addr+3] };
    initial begin 
INST_memory[0]= 'h00; INST_memory[1]='h40;INST_memory[2]='h00;INST_memory[3]='h6f;
INST_memory[4]= 'h00; INST_memory[5]='h00;INST_memory[6]='h05;INST_memory[7]='h13;
INST_memory[8]= 'h00; INST_memory[9]='h0f;INST_memory[10]='h45;INST_memory[11]='hb7;
INST_memory[12]= 'h24; INST_memory[13]='h05;INST_memory[14]='h85;INST_memory[15]='h93;
INST_memory[16]= 'h00; INST_memory[17]='h25;INST_memory[18]='hd5;INST_memory[19]='h93;
INST_memory[20]= 'h00; INST_memory[21]='h00;INST_memory[22]='h02;INST_memory[23]='h93;
INST_memory[24]= 'h00; INST_memory[25]='h15;INST_memory[26]='h05;INST_memory[27]='h13;
INST_memory[28]= 'hfe; INST_memory[29]='hb5;INST_memory[30]='h1e;INST_memory[31]='he3;
INST_memory[32]= 'h00; INST_memory[33]='h12;INST_memory[34]='h82;INST_memory[35]='h93;
INST_memory[36]= 'h00; INST_memory[37]='h00;INST_memory[38]='h05;INST_memory[39]='h13;
INST_memory[40]= 'hff; INST_memory[41]='h1f;INST_memory[42]='hf0;INST_memory[43]='h6f;
    end
    //assign pc_en = (INST == 32'h0) ? 1'b0 : 1'b1;

endmodule
