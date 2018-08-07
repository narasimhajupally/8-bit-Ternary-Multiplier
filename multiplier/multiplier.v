`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:47:04 03/16/2018 
// Design Name: 
// Module Name:    multiplier 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module multiplier(
input [7:0]a,
input [7:0]b,
output [15:0]y
    );
	 wire [7:0]bwcom;
	 reg [7:0]bcom;
	 reg [7:0]ac;
	 reg [7:0]br;
	 reg [7:0]qr;
	 reg qrm;
	 always @(a)
	 begin
	 br <= a;
	 end
	 
	 always @(b)
	 begin
	 qr <= b;
	 end
	 
	 rcompliment rc(a,bwcom);
	 
	 always @(bwcom)
	 begin
	 bcom <= bwcom;
	 ac=8'b00000000;
	 qrm=1'b0;
	 end
	 
	 /*case 10 or 11 */
	 wire [7:0]temp111;wire [7:0]temp112;wire [7:0]temp113;wire temp114;
	 paralleladder pd111(ac,br,temp111);
	 shifter sf111(temp111,qr,temp112,temp113,temp114);
	 /*case 12 */
	 wire [7:0]temp121;wire [7:0]temp122;wire [7:0]temp123;wire temp124;
	 paralleladder pd121(temp111,br,temp121);
	 arshifter arsf121(temp121,qr,temp122,temp123,temp124);
	 /*case 00 or 01 */
	 wire [7:0]temp131;wire [7:0]temp132;wire temp133;
	 shifter sf131(ac,qr,temp131,temp132,temp133);
	 /*case 02 */
	 wire [7:0]temp141;wire [7:0]temp142;wire temp143;
	 arshifter arsf141(temp111,qr,temp141,temp142,temp143);
	 /*case 22 */
	 wire [7:0]temp151;wire [7:0]temp152;wire temp153;
	 arshifter arsf151(ac,qr,temp151,temp152,temp153);
	 /*case 21 or 20 */
	 wire [7:0]temp161;wire [7:0]temp162;wire [7:0]temp163;wire temp164;
	 paralleladder pd161(ac,bcom,temp161);
	 arshifter arsf161(temp161,qr,temp162,temp163,temp164);
	 
	 reg [7:0]y11;reg [7:0]y12;reg y13;
	 always @(qr[0],qrm,temp112,temp113,temp114,temp122,temp123,temp124,temp131,temp132,temp133,temp141,temp142,temp143,temp151,temp152,temp153,temp162,temp163,temp164)
	 begin
	 case({qr[0],qrm})
	 2'bz0,2'bzz:begin y11=temp112; y12=temp113; y13=temp114; end
	 2'bz1: begin y11=temp122; y12=temp123; y13=temp124; end
	 2'b00,2'b0z: begin y11=temp131; y12=temp132; y13=temp133; end
	 2'b01: begin y11=temp141; y12=temp142; y13=temp143; end
	 2'b11: begin y11=temp151; y12=temp152; y13=temp153; end
	 2'b10,2'b1z: begin y11=temp162; y12=temp163; y13=temp164; end
	 endcase
	 end
	 
	 /*case 10 or 11 */
	 wire [7:0]temp211;wire [7:0]temp212;wire [7:0]temp213;wire temp214;
	 paralleladder pd211(y11,br,temp211);
	 shifter sf211(temp211,y12,temp212,temp213,temp214);
	 /*case 12 */
	 wire [7:0]temp221;wire [7:0]temp222;wire [7:0]temp223;wire temp224;
	 paralleladder pd221(temp211,br,temp221);
	 arshifter arsf221(temp221,y12,temp222,temp223,temp224);
	 /*case 00 or 01 */
	 wire [7:0]temp231;wire [7:0]temp232;wire temp233;
	 shifter sf231(y11,y12,temp231,temp232,temp233);
	 /*case 02 */
	 wire [7:0]temp241;wire [7:0]temp242;wire temp243;
	 arshifter arsf241(temp211,y12,temp241,temp242,temp243);
	 /*case 22 */
	 wire [7:0]temp251;wire [7:0]temp252;wire temp253;
	 arshifter arsf251(y11,y12,temp251,temp252,temp253);
	 /*case 21 or 20 */
	 wire [7:0]temp261;wire [7:0]temp262;wire [7:0]temp263;wire temp264;
	 paralleladder pd261(y11,bcom,temp261);
	 arshifter arsf261(temp261,y12,temp262,temp263,temp264);
	 
	 reg [7:0]y21;reg [7:0]y22;reg y23;
	 always @(y12[0],y13,temp212,temp213,temp214,temp222,temp223,temp224,temp231,temp232,temp233,temp241,temp242,temp243,temp251,temp252,temp253,temp262,temp263,temp264)
	 begin
	 case({y12[0],y13})
	 2'bz0,2'bzz:begin y21=temp212; y22=temp213; y23=temp214; end
	 2'bz1: begin y21=temp222; y22=temp223; y23=temp224; end
	 2'b00,2'b0z: begin y21=temp231; y22=temp232; y23=temp233; end
	 2'b01: begin y21=temp241; y22=temp242; y23=temp243; end
	 2'b11: begin y21=temp251; y22=temp252; y23=temp253; end
	 2'b10,2'b1z: begin y21=temp262; y22=temp263; y23=temp264; end
	 endcase
	 end
	 
	 /*case 10 or 11 */
	 wire [7:0]temp311;wire [7:0]temp312;wire [7:0]temp313;wire temp314;
	 paralleladder pd311(y21,br,temp311);
	 shifter sf311(temp311,y22,temp312,temp313,temp314);
	 /*case 12 */
	 wire [7:0]temp321;wire [7:0]temp322;wire [7:0]temp323;wire temp324;
	 paralleladder pd321(temp311,br,temp321);
	 arshifter arsf321(temp321,y22,temp322,temp323,temp324);
	 /*case 00 or 01 */
	 wire [7:0]temp331;wire [7:0]temp332;wire temp333;
	 shifter sf331(y21,y22,temp331,temp332,temp333);
	 /*case 02 */
	 wire [7:0]temp341;wire [7:0]temp342;wire temp343;
	 arshifter arsf341(temp311,y22,temp341,temp342,temp343);
	 /*case 22 */
	 wire [7:0]temp351;wire [7:0]temp352;wire temp353;
	 arshifter arsf351(y21,y22,temp351,temp352,temp353);
	 /*case 21 or 20 */
	 wire [7:0]temp361;wire [7:0]temp362;wire [7:0]temp363;wire temp364;
	 paralleladder pd361(y21,bcom,temp361);
	 arshifter arsf361(temp361,y22,temp362,temp363,temp364);
	 
	 reg [7:0]y31;reg [7:0]y32;reg y33;
	 always @(y22[0],y23,temp312,temp313,temp314,temp322,temp323,temp324,temp331,temp332,temp333,temp341,temp342,temp343,temp351,temp352,temp353,temp362,temp363,temp364)
	 begin
	 case({y22[0],y23})
	 2'bz0,2'bzz:begin y31=temp312; y32=temp313; y33=temp314; end
	 2'bz1: begin y31=temp322; y32=temp323; y33=temp324; end
	 2'b00,2'b0z: begin y31=temp331; y32=temp332; y33=temp333; end
	 2'b01: begin y31=temp341; y32=temp342; y33=temp343; end
	 2'b11: begin y31=temp351; y32=temp352; y33=temp353; end
	 2'b10,2'b1z: begin y31=temp362; y32=temp363; y33=temp364; end
	 endcase
	 end
	 
	 /*case 10 or 11 */
	 wire [7:0]temp411;wire [7:0]temp412;wire [7:0]temp413;wire temp414;
	 paralleladder pd411(y31,br,temp411);
	 shifter sf411(temp411,y32,temp412,temp413,temp414);
	 /*case 12 */
	 wire [7:0]temp421;wire [7:0]temp422;wire [7:0]temp423;wire temp424;
	 paralleladder pd421(temp411,br,temp421);
	 arshifter arsf421(temp421,y32,temp422,temp423,temp424);
	 /*case 00 or 01 */
	 wire [7:0]temp431;wire [7:0]temp432;wire temp433;
	 shifter sf431(y31,y32,temp431,temp432,temp433);
	 /*case 02 */
	 wire [7:0]temp441;wire [7:0]temp442;wire temp443;
	 arshifter arsf441(temp411,y32,temp441,temp442,temp443);
	 /*case 22 */
	 wire [7:0]temp451;wire [7:0]temp452;wire temp453;
	 arshifter arsf451(y31,y32,temp451,temp452,temp453);
	 /*case 21 or 20 */
	 wire [7:0]temp461;wire [7:0]temp462;wire [7:0]temp463;wire temp464;
	 paralleladder pd461(y31,bcom,temp461);
	 arshifter arsf461(temp461,y32,temp462,temp463,temp464);
	 
	 reg [7:0]y41;reg [7:0]y42;reg y43;
	 always @(y32[0],y33,temp412,temp413,temp414,temp422,temp423,temp424,temp431,temp432,temp433,temp441,temp442,temp443,temp451,temp452,temp453,temp462,temp463,temp464)
	 begin
	 case({y32[0],y33})
	 2'bz0,2'bzz:begin y41=temp412; y42=temp413; y43=temp414; end
	 2'bz1: begin y41=temp422; y42=temp423; y43=temp424; end
	 2'b00,2'b0z: begin y41=temp431; y42=temp432; y43=temp433; end
	 2'b01: begin y41=temp441; y42=temp442; y43=temp443; end
	 2'b11: begin y41=temp451; y42=temp452; y43=temp453; end
	 2'b10,2'b1z: begin y41=temp462; y42=temp463; y43=temp464; end
	 endcase
	 end
	 
	 /*case 10 or 11 */
	 wire [7:0]temp511;wire [7:0]temp512;wire [7:0]temp513;wire temp514;
	 paralleladder pd511(y41,br,temp511);
	 shifter sf511(temp511,y42,temp512,temp513,temp514);
	 /*case 12 */
	 wire [7:0]temp521;wire [7:0]temp522;wire [7:0]temp523;wire temp524;
	 paralleladder pd521(temp511,br,temp521);
	 arshifter arsf521(temp521,y42,temp522,temp523,temp524);
	 /*case 00 or 01 */
	 wire [7:0]temp531;wire [7:0]temp532;wire temp533;
	 shifter sf531(y41,y42,temp531,temp532,temp533);
	 /*case 02 */
	 wire [7:0]temp541;wire [7:0]temp542;wire temp543;
	 arshifter arsf541(temp511,y42,temp541,temp542,temp543);
	 /*case 22 */
	 wire [7:0]temp551;wire [7:0]temp552;wire temp553;
	 arshifter arsf551(y41,y42,temp551,temp552,temp553);
	 /*case 21 or 20 */
	 wire [7:0]temp561;wire [7:0]temp562;wire [7:0]temp563;wire temp564;
	 paralleladder pd561(y41,bcom,temp561);
	 arshifter arsf561(temp561,y42,temp562,temp563,temp564);
	 
	 reg [7:0]y51;reg [7:0]y52;reg y53;
	 always @(y42[0],y43,temp512,temp513,temp514,temp522,temp523,temp524,temp531,temp532,temp533,temp541,temp542,temp543,temp551,temp552,temp553,temp562,temp563,temp564)
	 begin
	 case({y42[0],y43})
	 2'bz0,2'bzz:begin y51=temp512; y52=temp513; y53=temp514; end
	 2'bz1: begin y51=temp522; y52=temp523; y53=temp524; end
	 2'b00,2'b0z: begin y51=temp531; y52=temp532; y53=temp533; end
	 2'b01: begin y51=temp541; y52=temp542; y53=temp543; end
	 2'b11: begin y51=temp551; y52=temp552; y53=temp553; end
	 2'b10,2'b1z: begin y51=temp562; y52=temp563; y53=temp564; end
	 endcase
	 end
	 
	 /*case 10 or 11 */
	 wire [7:0]temp611;wire [7:0]temp612;wire [7:0]temp613;wire temp614;
	 paralleladder pd611(y51,br,temp611);
	 shifter sf611(temp611,y52,temp612,temp613,temp614);
	 /*case 12 */
	 wire [7:0]temp621;wire [7:0]temp622;wire [7:0]temp623;wire temp624;
	 paralleladder pd621(temp611,br,temp621);
	 arshifter arsf621(temp621,y52,temp622,temp623,temp624);
	 /*case 00 or 01 */
	 wire [7:0]temp631;wire [7:0]temp632;wire temp633;
	 shifter sf631(y51,y52,temp631,temp632,temp633);
	 /*case 02 */
	 wire [7:0]temp641;wire [7:0]temp642;wire temp643;
	 arshifter arsf641(temp611,y52,temp641,temp642,temp643);
	 /*case 22 */
	 wire [7:0]temp651;wire [7:0]temp652;wire temp653;
	 arshifter arsf651(y51,y52,temp651,temp652,temp653);
	 /*case 21 or 20 */
	 wire [7:0]temp661;wire [7:0]temp662;wire [7:0]temp663;wire temp664;
	 paralleladder pd661(y51,bcom,temp661);
	 arshifter arsf661(temp661,y52,temp662,temp663,temp664);
	 
	 reg [7:0]y61;reg [7:0]y62;reg y63;
	 always @(y52[0],y53,temp612,temp613,temp614,temp622,temp623,temp624,temp631,temp632,temp633,temp641,temp642,temp643,temp651,temp652,temp653,temp662,temp663,temp664)
	 begin
	 case({y52[0],y53})
	 2'bz0,2'bzz:begin y61=temp612; y62=temp613; y63=temp614; end
	 2'bz1: begin y61=temp622; y62=temp623; y63=temp624; end
	 2'b00,2'b0z: begin y61=temp631; y62=temp632; y63=temp633; end
	 2'b01: begin y61=temp641; y62=temp642; y63=temp643; end
	 2'b11: begin y61=temp651; y62=temp652; y63=temp653; end
	 2'b10,2'b1z: begin y61=temp662; y62=temp663; y63=temp664; end
	 endcase
	 end
	 
	 /*case 10 or 11 */
	 wire [7:0]temp711;wire [7:0]temp712;wire [7:0]temp713;wire temp714;
	 paralleladder pd711(y61,br,temp711);
	 shifter sf711(temp711,y62,temp712,temp713,temp714);
	 /*case 12 */
	 wire [7:0]temp721;wire [7:0]temp722;wire [7:0]temp723;wire temp724;
	 paralleladder pd721(temp711,br,temp721);
	 arshifter arsf721(temp721,y62,temp722,temp723,temp724);
	 /*case 00 or 01 */
	 wire [7:0]temp731;wire [7:0]temp732;wire temp733;
	 shifter sf731(y61,y62,temp731,temp732,temp733);
	 /*case 02 */
	 wire [7:0]temp741;wire [7:0]temp742;wire temp743;
	 arshifter arsf741(temp711,y62,temp741,temp742,temp743);
	 /*case 22 */
	 wire [7:0]temp751;wire [7:0]temp752;wire temp753;
	 arshifter arsf751(y61,y62,temp751,temp752,temp753);
	 /*case 21 or 20 */
	 wire [7:0]temp761;wire [7:0]temp762;wire [7:0]temp763;wire temp764;
	 paralleladder pd761(y61,bcom,temp761);
	 arshifter arsf761(temp761,y62,temp762,temp763,temp764);
	 
	 reg [7:0]y71;reg [7:0]y72;reg y73;
	 always @(y62[0],y63,temp712,temp713,temp714,temp722,temp723,temp724,temp731,temp732,temp733,temp741,temp742,temp743,temp751,temp752,temp753,temp762,temp763,temp764)
	 begin
	 case({y62[0],y63})
	 2'bz0,2'bzz:begin y71=temp712; y72=temp713; y73=temp714; end
	 2'bz1: begin y71=temp722; y72=temp723; y73=temp724; end
	 2'b00,2'b0z: begin y71=temp731; y72=temp732; y73=temp733; end
	 2'b01: begin y71=temp741; y72=temp742; y73=temp743; end
	 2'b11: begin y71=temp751; y72=temp752; y73=temp753; end
	 2'b10,2'b1z: begin y71=temp762; y72=temp763; y73=temp764; end
	 endcase
	 end
	 
	 /*case 10 or 11 */
	 wire [7:0]temp811;wire [7:0]temp812;wire [7:0]temp813;wire temp814;
	 paralleladder pd811(y71,br,temp811);
	 shifter sf811(temp811,y72,temp812,temp813,temp814);
	 /*case 12 */
	 wire [7:0]temp821;wire [7:0]temp822;wire [7:0]temp823;wire temp824;
	 paralleladder pd821(temp811,br,temp821);
	 arshifter arsf821(temp821,y72,temp822,temp823,temp824);
	 /*case 00 or 01 */
	 wire [7:0]temp831;wire [7:0]temp832;wire temp833;
	 shifter sf831(y71,y72,temp831,temp832,temp833);
	 /*case 02 */
	 wire [7:0]temp841;wire [7:0]temp842;wire temp843;
	 arshifter arsf841(temp811,y72,temp841,temp842,temp843);
	 /*case 22 */
	 wire [7:0]temp851;wire [7:0]temp852;wire temp853;
	 arshifter arsf851(y71,y72,temp851,temp852,temp853);
	 /*case 21 or 20 */
	 wire [7:0]temp861;wire [7:0]temp862;wire [7:0]temp863;wire temp864;
	 paralleladder pd861(y71,bcom,temp861);
	 arshifter arsf861(temp861,y72,temp862,temp863,temp864);
	 
	 reg [7:0]y81;reg [7:0]y82;reg y83;
	 always @(y72[0],y73,temp812,temp813,temp814,temp822,temp823,temp824,temp831,temp832,temp833,temp841,temp842,temp843,temp851,temp852,temp853,temp862,temp863,temp864)
	 begin
	 case({y72[0],y73})
	 2'bz0,2'bzz:begin y81=temp812; y82=temp813; y83=temp814; end
	 2'bz1: begin y81=temp822; y82=temp823; y83=temp824; end
	 2'b00,2'b0z: begin y81=temp831; y82=temp832; y83=temp833; end
	 2'b01: begin y81=temp841; y82=temp842; y83=temp843; end
	 2'b11: begin y81=temp851; y82=temp852; y83=temp853; end
	 2'b10,2'b1z: begin y81=temp862; y82=temp863; y83=temp864; end
	 endcase
	 end
	 
	 assign y[15:8]=y81;
	 assign y[7:0]=y82;

endmodule

module paralleladder(
	input [7:0]a,
	input [7:0]b,
	output [7:0]y
    );
	wire [7:0]c;
	adder ad0(a[0],b[0],1'b0,y[0],c[0]);
	adder ad1(a[1],b[1],c[0],y[1],c[1]);
	adder ad2(a[2],b[2],c[1],y[2],c[2]);
	adder ad3(a[3],b[3],c[2],y[3],c[3]);
	adder ad4(a[4],b[4],c[3],y[4],c[4]);
	adder ad5(a[5],b[5],c[4],y[5],c[5]);
	adder ad6(a[6],b[6],c[5],y[6],c[6]);
	adder ad7(a[7],b[7],c[6],y[7],c[7]);
endmodule

module adder(
	input a1,b1,cin,
	output reg sum,
	output reg cout
	);
	always@(a1,b1,cin)
	begin
	case({a1,b1,cin})
	3'b000:begin sum=1'b0;cout=1'b0; end
	3'b00z:begin sum=1'bz;cout=1'b0; end
	3'b001:begin sum=1'b1;cout=1'b0; end
	3'b0z0:begin sum=1'bz;cout=1'b0; end
	3'b0zz:begin sum=1'b1;cout=1'b0; end
	3'b0z1:begin sum=1'b0;cout=1'bz; end
	3'b010:begin sum=1'b1;cout=1'b0; end
	3'b01z:begin sum=1'b0;cout=1'bz; end
	3'b011:begin sum=1'bz;cout=1'bz; end
	
	3'bz00:begin sum=1'bz;cout=1'b0; end
	3'bz0z:begin sum=1'b1;cout=1'b0; end
	3'bz01:begin sum=1'b0;cout=1'bz; end
	3'bzz0:begin sum=1'b1;cout=1'b0; end
	3'bzzz:begin sum=1'b0;cout=1'bz; end
	3'bzz1:begin sum=1'bz;cout=1'bz; end
	3'bz10:begin sum=1'b0;cout=1'bz; end
	3'bz1z:begin sum=1'bz;cout=1'bz; end
	3'bz11:begin sum=1'b1;cout=1'bz; end
	
	3'b100:begin sum=1'b1;cout=1'b0; end
	3'b10z:begin sum=1'b0;cout=1'bz; end
	3'b101:begin sum=1'bz;cout=1'bz; end
	3'b1z0:begin sum=1'b0;cout=1'bz; end
	3'b1zz:begin sum=1'bz;cout=1'bz; end
	3'b1z1:begin sum=1'b1;cout=1'bz; end
	3'b110:begin sum=1'bz;cout=1'bz; end
	3'b11z:begin sum=1'b1;cout=1'bz; end
	3'b111:begin sum=1'b0;cout=1'b1; end
	endcase
	end
endmodule

module rcompliment(
	input [7:0]temp1,
	output [7:0]temp3
    );
	reg [7:0]temp2;
	always@(temp1)
	begin
	if(temp1[0]==1'b0 || temp1[0]==1'b1) temp2[0]=~temp1[0];
	else temp2[0]=temp1[0];
	if(temp1[1]==1'b0 || temp1[1]==1'b1) temp2[1]=~temp1[1];
	else temp2[1]=temp1[1];
	if(temp1[2]==1'b0 || temp1[2]==1'b1) temp2[2]=~temp1[2];
	else temp2[2]=temp1[2];
	if(temp1[3]==1'b0 || temp1[3]==1'b1) temp2[3]=~temp1[3];
	else temp2[3]=temp1[3];
	if(temp1[4]==1'b0 || temp1[4]==1'b1) temp2[4]=~temp1[4];
	else temp2[4]=temp1[4];
	if(temp1[5]==1'b0 || temp1[5]==1'b1) temp2[5]=~temp1[5];
	else temp2[5]=temp1[5];
	if(temp1[6]==1'b0 || temp1[6]==1'b1) temp2[6]=~temp1[6];
	else temp2[6]=temp1[6];
	if(temp1[7]==1'b0 || temp1[7]==1'b1) temp2[7]=~temp1[7];
	else temp2[7]=temp1[7];
	end
	paralleladder pa(temp2,8'b0000000z,temp3);
endmodule

module shifter(input [7:0]i1,input[7:0]i2, output [7:0]o1,output [7:0]o2, output o3 );
reg [7:0]temp1;
reg [7:0]temp2;
reg temp3;
integer j;
always @(i1)
begin
	temp1[7]=1'b0;
	for(j=6;j>=0;j=j-1)
	begin
	temp1[j]=i1[j+1];
	end
	temp2[7]=i1[0];
end
always @(i2)
begin 
	for(j=6;j>=0;j=j-1)
	begin
	temp2[j]=i2[j+1];
	end
	temp3=i2[0];
end
assign o3=temp3;
assign o1=temp1;
assign o2=temp2;
endmodule

module arshifter(input [7:0]i1,input[7:0]i2, output [7:0]o1,output [7:0]o2, output o3 );
reg [7:0]temp1;
reg [7:0]temp2;
reg temp3;
integer j;
always @(i1)
begin
	temp1[7]=i1[7];
	for(j=6;j>=0;j=j-1)
	begin
	temp1[j]=i1[j+1];
	end
	temp2[7]=i1[0];
end
always @(i2)
begin 
	for(j=6;j>=0;j=j-1)
	begin
	temp2[j]=i2[j+1];
	end
	temp3=i2[0];
end
assign o3=temp3;
assign o1=temp1;
assign o2=temp2;
endmodule
