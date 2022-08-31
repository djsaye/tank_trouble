module trig (input [6:0] angle, output [8:0] sin, cos);

	logic [8:0] sinVal [89:0];
	logic [8:0] cosVal [89:0];
	always_comb
	begin
	sinVal[0] = 9'b00000_0000;
	sinVal[1] = 9'b00000_0001;
	sinVal[2] = 9'b00000_0010;
	sinVal[3] = 9'b00000_0011;
	sinVal[4] = 9'b00000_0100;
	sinVal[5] = 9'b00000_0101;
	sinVal[6] = 9'b00000_0110;
	sinVal[7] = 9'b00000_0111;
	sinVal[8] = 9'b00000_1000;
	sinVal[9] = 9'b00000_1001;
	sinVal[10] = 9'b00000_1010;
	sinVal[11] = 9'b00000_1011;
	sinVal[12] = 9'b00000_1011;
	sinVal[13] = 9'b00000_1100;
	sinVal[14] = 9'b00000_1101;
	sinVal[15] = 9'b00000_1101;
	sinVal[16] = 9'b00000_1110;
	sinVal[17] = 9'b00000_1110;
	sinVal[18] = 9'b00000_1111;
	sinVal[19] = 9'b00000_1111;
	sinVal[20] = 9'b00000_1111;
	sinVal[21] = 9'b00000_1111;
	sinVal[22] = 9'b00000_1111;
	sinVal[23] = 9'b00000_1111;
	sinVal[24] = 9'b00000_1111;
	sinVal[25] = 9'b00000_1111;
	sinVal[26] = 9'b00000_1111;
	sinVal[27] = 9'b00000_1111;
	sinVal[28] = 9'b00000_1110;
	sinVal[29] = 9'b00000_1110;
	sinVal[30] = 9'b00000_1101;
	sinVal[31] = 9'b00000_1101;
	sinVal[32] = 9'b00000_1100;
	sinVal[33] = 9'b00000_1011;
	sinVal[34] = 9'b00000_1011;
	sinVal[35] = 9'b00000_1010;
	sinVal[36] = 9'b00000_1001;
	sinVal[37] = 9'b00000_1000;
	sinVal[38] = 9'b00000_0111;
	sinVal[39] = 9'b00000_0110;
	sinVal[40] = 9'b00000_0101;
	sinVal[41] = 9'b00000_0100;
	sinVal[42] = 9'b00000_0011;
	sinVal[43] = 9'b00000_0010;
	sinVal[44] = 9'b00000_0001;
	sinVal[45] = 9'b00000_0000;
	sinVal[46] = 9'b10000_0001;
	sinVal[47] = 9'b10000_0010;
	sinVal[48] = 9'b10000_0011;
	sinVal[49] = 9'b10000_0100;
	sinVal[50] = 9'b10000_0101;
	sinVal[51] = 9'b10000_0110;
	sinVal[52] = 9'b10000_0111;
	sinVal[53] = 9'b10000_1000;
	sinVal[54] = 9'b10000_1001;
	sinVal[55] = 9'b10000_1010;
	sinVal[56] = 9'b10000_1011;
	sinVal[57] = 9'b10000_1011;
	sinVal[58] = 9'b10000_1100;
	sinVal[59] = 9'b10000_1101;
	sinVal[60] = 9'b10000_1101;
	sinVal[61] = 9'b10000_1110;
	sinVal[62] = 9'b10000_1110;
	sinVal[63] = 9'b10000_1111;
	sinVal[64] = 9'b10000_1111;
	sinVal[65] = 9'b10000_1111;
	sinVal[66] = 9'b10000_1111;
	sinVal[67] = 9'b10000_1111;
	sinVal[68] = 9'b10000_1111;
	sinVal[69] = 9'b10000_1111;
	sinVal[70] = 9'b10000_1111;
	sinVal[71] = 9'b10000_1111;
	sinVal[72] = 9'b10000_1111;
	sinVal[73] = 9'b10000_1110;
	sinVal[74] = 9'b10000_1110;
	sinVal[75] = 9'b10000_1101;
	sinVal[76] = 9'b10000_1101;
	sinVal[77] = 9'b10000_1100;
	sinVal[78] = 9'b10000_1011;
	sinVal[79] = 9'b10000_1011;
	sinVal[80] = 9'b10000_1010;
	sinVal[81] = 9'b10000_1001;
	sinVal[82] = 9'b10000_1000;
	sinVal[83] = 9'b10000_0111;
	sinVal[84] = 9'b10000_0110;
	sinVal[85] = 9'b10000_0101;
	sinVal[86] = 9'b10000_0100;
	sinVal[87] = 9'b10000_0011;
	sinVal[88] = 9'b10000_0010;
	sinVal[89] = 9'b10000_0001;
	cosVal[0] = 9'b00001_0000;
	cosVal[1] = 9'b00000_1111;
	cosVal[2] = 9'b00000_1111;
	cosVal[3] = 9'b00000_1111;
	cosVal[4] = 9'b00000_1111;
	cosVal[5] = 9'b00000_1111;
	cosVal[6] = 9'b00000_1110;
	cosVal[7] = 9'b00000_1110;
	cosVal[8] = 9'b00000_1101;
	cosVal[9] = 9'b00000_1100;
	cosVal[10] = 9'b00000_1100;
	cosVal[11] = 9'b00000_1011;
	cosVal[12] = 9'b00000_1010;
	cosVal[13] = 9'b00000_1001;
	cosVal[14] = 9'b00000_1000;
	cosVal[15] = 9'b00000_1000;
	cosVal[16] = 9'b00000_0111;
	cosVal[17] = 9'b00000_0101;
	cosVal[18] = 9'b00000_0100;
	cosVal[19] = 9'b00000_0011;
	cosVal[20] = 9'b00000_0010;
	cosVal[21] = 9'b00000_0001;
	cosVal[22] = 9'b00000_0000;
	cosVal[23] = 9'b10000_0000;
	cosVal[24] = 9'b10000_0001;
	cosVal[25] = 9'b10000_0010;
	cosVal[26] = 9'b10000_0011;
	cosVal[27] = 9'b10000_0100;
	cosVal[28] = 9'b10000_0101;
	cosVal[29] = 9'b10000_0111;
	cosVal[30] = 9'b10000_1000;
	cosVal[31] = 9'b10000_1000;
	cosVal[32] = 9'b10000_1001;
	cosVal[33] = 9'b10000_1010;
	cosVal[34] = 9'b10000_1011;
	cosVal[35] = 9'b10000_1100;
	cosVal[36] = 9'b10000_1100;
	cosVal[37] = 9'b10000_1101;
	cosVal[38] = 9'b10000_1110;
	cosVal[39] = 9'b10000_1110;
	cosVal[40] = 9'b10000_1111;
	cosVal[41] = 9'b10000_1111;
	cosVal[42] = 9'b10000_1111;
	cosVal[43] = 9'b10000_1111;
	cosVal[44] = 9'b10000_1111;
	cosVal[45] = 9'b10001_0000;
	cosVal[46] = 9'b10000_1111;
	cosVal[47] = 9'b10000_1111;
	cosVal[48] = 9'b10000_1111;
	cosVal[49] = 9'b10000_1111;
	cosVal[50] = 9'b10000_1111;
	cosVal[51] = 9'b10000_1110;
	cosVal[52] = 9'b10000_1110;
	cosVal[53] = 9'b10000_1101;
	cosVal[54] = 9'b10000_1100;
	cosVal[55] = 9'b10000_1100;
	cosVal[56] = 9'b10000_1011;
	cosVal[57] = 9'b10000_1010;
	cosVal[58] = 9'b10000_1001;
	cosVal[59] = 9'b10000_1000;
	cosVal[60] = 9'b10000_1000;
	cosVal[61] = 9'b10000_0111;
	cosVal[62] = 9'b10000_0101;
	cosVal[63] = 9'b10000_0100;
	cosVal[64] = 9'b10000_0011;
	cosVal[65] = 9'b10000_0010;
	cosVal[66] = 9'b10000_0001;
	cosVal[67] = 9'b10000_0000;
	cosVal[68] = 9'b00000_0000;
	cosVal[69] = 9'b00000_0001;
	cosVal[70] = 9'b00000_0010;
	cosVal[71] = 9'b00000_0011;
	cosVal[72] = 9'b00000_0100;
	cosVal[73] = 9'b00000_0101;
	cosVal[74] = 9'b00000_0111;
	cosVal[75] = 9'b00000_1000;
	cosVal[76] = 9'b00000_1000;
	cosVal[77] = 9'b00000_1001;
	cosVal[78] = 9'b00000_1010;
	cosVal[79] = 9'b00000_1011;
	cosVal[80] = 9'b00000_1100;
	cosVal[81] = 9'b00000_1100;
	cosVal[82] = 9'b00000_1101;
	cosVal[83] = 9'b00000_1110;
	cosVal[84] = 9'b00000_1110;
	cosVal[85] = 9'b00000_1111;
	cosVal[86] = 9'b00000_1111;
	cosVal[87] = 9'b00000_1111;
	cosVal[88] = 9'b00000_1111;
	cosVal[89] = 9'b00000_1111;
	end
	assign sin = sinVal[angle];
	assign cos = cosVal[angle];
endmodule 
/*

#!/usr/bin/env python3
from math import ceil, sin, cos, pi, radians
import sys
def float_bin(number):
    whole, dec = str(number).split(".")
    whole = int(whole)
    dec = number - whole
    res = bin(whole).lstrip("0b") + "_"
    temp = ""
    if(dec - .5 < 0):
        temp = temp + "0"
    else:
        temp = temp + "1"
        dec -= .5
    if(dec - .25 < 0):
        temp = temp + "0"
    else:
        temp = temp + "1"
        dec -= .25
    if(dec - .125 < 0):
        temp = temp + "0"
    else:
        temp = temp + "1"
        dec -= .125
    if(dec - .0625 < 0):
        temp = temp + "0"
    else:
        temp = temp + "1"
        dec -= .0625
    return res + temp
  
# Function converts the value passed as
# parameter to it's decimal representation
rows = 90
for i in range(rows):
    val = radians(4 * i)
    res = round(cos(val),4)
    neg = 0
    if (res < 0):
        neg = 1
    print("\tcosVal["+str(i)+"] = 9'b"+str(neg)+"0000"+float_bin(abs(res))+";")

*/