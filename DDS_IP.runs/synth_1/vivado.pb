
u
Command: %s
53*	vivadotcl2D
0synth_design -top dds_top -part xc7a100tfgg676-22default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 425.887 ; gain = 106.246
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
dds_top2default:default2
 2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
vga_top2default:default2
 2default:default2v
`C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/vga_top.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02default:default2
 2default:default2?
?C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.runs/synth_1/.Xil/Vivado-11080-DESKTOP-OA2P2AF/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02default:default2
 2default:default2
12default:default2
12default:default2?
?C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.runs/synth_1/.Xil/Vivado-11080-DESKTOP-OA2P2AF/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
vga_ctrl2default:default2
 2default:default2w
aC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/vga_ctrl.v2default:default2
232default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter H_SYNC bound to: 10'b0010000000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter H_BACK bound to: 10'b0001011000 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter H_VALID bound to: 10'b1100100000 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter H_FRONT bound to: 10'b0000101000 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter H_TOTAL bound to: 11'b10000100000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter V_SYNC bound to: 10'b0000000100 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter V_BACK bound to: 10'b0000010111 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter V_VALID bound to: 10'b1001011000 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter V_FRONT bound to: 10'b0000000001 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter V_TOTAL bound to: 10'b1001110100 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_ctrl2default:default2
 2default:default2
22default:default2
12default:default2w
aC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/vga_ctrl.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
RI_pix2default:default2
 2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
232default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter CHAR_W bound to: 10'b0010100000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter CHAR_H bound to: 10'b0000100000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter CHAR_START_H bound to: 10'b0110010000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter CHAR_START_V bound to: 10'b0001100100 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
data_change2default:default2
 2default:default2z
dC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/data_change.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
data_change2default:default2
 2default:default2
32default:default2
12default:default2z
dC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/data_change.v2default:default2
232default:default8@Z8-6155h px? 
?
default block is never used226*oasys2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1602default:default8@Z8-226h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_R_reg[31][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_R_reg[30][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_R_reg[29][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_R_reg[28][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_R_reg[27][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_R_reg[26][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_R_reg[14][15:0]2default:default2(
char_R_reg[20][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_R_reg[13][15:0]2default:default2(
char_R_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_R_reg[12][15:0]2default:default2(
char_R_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_R_reg[11][15:0]2default:default2(
char_R_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_R_reg[10][15:0]2default:default2(
char_R_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_R_reg[9][15:0]2default:default2(
char_R_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_R_reg[6][15:0]2default:default2(
char_R_reg[16][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_R_reg[5][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_R_reg[4][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_R_reg[3][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_R_reg[2][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_R_reg[1][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_R_reg[0][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[31][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[30][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[29][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[28][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[27][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[26][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[25][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[23][15:0]2default:default2(
char_I_reg[24][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[21][15:0]2default:default2(
char_I_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[20][15:0]2default:default2(
char_I_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[19][15:0]2default:default2(
char_I_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[18][15:0]2default:default2(
char_I_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[17][15:0]2default:default2(
char_I_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[16][15:0]2default:default2(
char_I_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[15][15:0]2default:default2(
char_I_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[14][15:0]2default:default2(
char_I_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[13][15:0]2default:default2(
char_I_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[12][15:0]2default:default2(
char_I_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[11][15:0]2default:default2(
char_I_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
char_I_reg[10][15:0]2default:default2(
char_I_reg[22][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_I_reg[9][15:0]2default:default2(
char_I_reg[24][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_I_reg[8][15:0]2default:default2(
char_I_reg[24][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_I_reg[7][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_I_reg[6][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_I_reg[5][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_I_reg[4][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_I_reg[3][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_I_reg[2][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_I_reg[1][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
char_I_reg[0][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[31][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[30][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[29][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[28][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[27][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[26][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[25][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[24][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[23][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[22][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[21][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[20][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[18][15:0]2default:default2,
char_equal_reg[19][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[17][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[16][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[15][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[14][15:0]2default:default2,
char_equal_reg[19][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[13][15:0]2default:default2,
char_equal_reg[19][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[12][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[11][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2,
char_equal_reg[10][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2+
char_equal_reg[9][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2+
char_equal_reg[8][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2+
char_equal_reg[7][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2+
char_equal_reg[6][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2+
char_equal_reg[5][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2+
char_equal_reg[4][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2+
char_equal_reg[3][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2+
char_equal_reg[2][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2+
char_equal_reg[1][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2+
char_equal_reg[0][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
data_0_reg[31][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
data_0_reg[30][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
data_0_reg[29][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
data_0_reg[28][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
data_0_reg[27][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
data_0_reg[26][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
data_0_reg[25][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
data_0_reg[19][15:0]2default:default2(
data_0_reg[20][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
data_0_reg[11][15:0]2default:default2(
char_R_reg[25][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
data_0_reg[10][15:0]2default:default2(
data_0_reg[20][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
data_0_reg[9][15:0]2default:default2(
data_0_reg[20][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
data_0_reg[8][15:0]2default:default2(
data_0_reg[21][15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
data_0_reg[4][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
data_0_reg[3][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
data_0_reg[2][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
data_0_reg[1][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2'
data_0_reg[0][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
data_1_reg[31][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
3262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
data_1_reg[30][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
3262default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2(
data_1_reg[29][15:0]2default:default2#
space_reg[15:0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
3262default:default8@Z8-4471h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-44712default:default2
1002default:defaultZ17-14h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_R_reg[31]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_R_reg[30]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_R_reg[29]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_R_reg[28]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_R_reg[27]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_R_reg[26]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_R_reg[14]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_R_reg[13]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_R_reg[12]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_R_reg[11]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_R_reg[10]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_R_reg[9]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_R_reg[6]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_R_reg[5]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_R_reg[4]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_R_reg[3]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_R_reg[2]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_R_reg[1]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_R_reg[0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
1932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[31]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[30]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[29]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[28]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[27]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[26]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[25]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[23]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[21]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[20]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[19]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[18]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[17]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[16]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[15]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[14]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[13]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[12]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[11]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
char_I_reg[10]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_I_reg[9]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_I_reg[8]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_I_reg[7]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_I_reg[6]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_I_reg[5]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_I_reg[4]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_I_reg[3]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_I_reg[2]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_I_reg[1]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_I_reg[0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[31]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[30]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[29]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[28]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[27]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[26]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[25]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[24]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[23]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[22]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[21]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[20]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[18]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[17]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[16]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[15]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[14]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[13]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[12]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[11]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
char_equal_reg[10]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
char_equal_reg[9]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
char_equal_reg[8]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
char_equal_reg[7]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
char_equal_reg[6]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
char_equal_reg[5]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
char_equal_reg[4]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
char_equal_reg[3]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
char_equal_reg[2]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
char_equal_reg[1]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
char_equal_reg[0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2592default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
data_0_reg[31]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
data_0_reg[30]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
data_0_reg[29]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
data_0_reg[28]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
data_0_reg[27]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
data_0_reg[26]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
data_0_reg[25]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
data_0_reg[19]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
data_0_reg[11]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
data_0_reg[10]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
data_0_reg[9]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
data_0_reg[8]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
data_0_reg[4]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
data_0_reg[3]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
data_0_reg[2]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
data_0_reg[1]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
data_0_reg[0]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
2932default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
data_1_reg[31]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
3262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
data_1_reg[30]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
3262default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
data_1_reg[29]2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
3262default:default8@Z8-6014h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-60142default:default2
1002default:defaultZ17-14h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RI_pix2default:default2
 2default:default2
42default:default2
12default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RI.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
RO_pix2default:default2
 2default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RO.v2default:default2
232default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter CHAR_W bound to: 10'b0010100000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter CHAR_H bound to: 10'b0000100000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter CHAR_START_H bound to: 10'b0110010000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter CHAR_START_V bound to: 10'b0010000100 
2default:defaulth p
x
? 
?
default block is never used226*oasys2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RO.v2default:default2
1602default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RO_pix2default:default2
 2default:default2
52default:default2
12default:default2q
[C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/RO.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
vpp_pix2default:default2
 2default:default2x
bC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/watch/vpp.v2default:default2
232default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter CHAR_W bound to: 10'b0001100000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter CHAR_H bound to: 10'b0000100000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter CHAR_START_H bound to: 10'b0110010000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter CHAR_START_V bound to: 10'b0010100100 
2default:defaulth p
x
? 
?
default block is never used226*oasys2x
bC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/watch/vpp.v2default:default2
1562default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vpp_pix2default:default2
 2default:default2
62default:default2
12default:default2x
bC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/watch/vpp.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
vmin_pix2default:default2
 2default:default2y
cC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/watch/vmin.v2default:default2
232default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter CHAR_W bound to: 10'b0001100000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter CHAR_H bound to: 10'b0000100000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter CHAR_START_H bound to: 10'b0110010000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter CHAR_START_V bound to: 10'b0011000100 
2default:defaulth p
x
? 
?
default block is never used226*oasys2y
cC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/watch/vmin.v2default:default2
1562default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vmin_pix2default:default2
 2default:default2
72default:default2
12default:default2y
cC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/watch/vmin.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
vmax_pix2default:default2
 2default:default2y
cC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/watch/vmax.v2default:default2
232default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter CHAR_W bound to: 10'b0001100000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter CHAR_H bound to: 10'b0000100000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter CHAR_START_H bound to: 10'b0110010000 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter CHAR_START_V bound to: 10'b0011100100 
2default:defaulth p
x
? 
?
default block is never used226*oasys2y
cC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/watch/vmax.v2default:default2
1552default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vmax_pix2default:default2
 2default:default2
82default:default2
12default:default2y
cC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/watch/vmax.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

freq_chart2default:default2
 2default:default2y
cC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/freq_chart.v2default:default2
232default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter CHART_W bound to: 10'b0100000000 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter CHART_H bound to: 10'b0100000000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter CHART_START_H bound to: 10'b0001100100 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter CHART_START_V bound to: 10'b0001100100 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter LINE_W bound to: 2'b11 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter WAIT bound to: 3'b001 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter UPDATING bound to: 3'b010 
2default:defaulth p
x
? 
N
%s
*synth26
"	Parameter DONE bound to: 3'b100 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2y
cC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/freq_chart.v2default:default2
1312default:default8@Z8-155h px? 
?
synthesizing module '%s'%s4497*oasys2
ram_dual2default:default2
 2default:default2w
aC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/ram_dual.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ram_dual2default:default2
 2default:default2
92default:default2
12default:default2w
aC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/ram_dual.v2default:default2
12default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
q12default:default2

freq_chart2default:default2y
cC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/freq_chart.v2default:default2
1572default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

freq_chart2default:default2
 2default:default2
102default:default2
12default:default2y
cC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/freq_chart.v2default:default2
232default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
252default:default2
din2default:default2
82default:default2

freq_chart2default:default2v
`C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/vga_top.v2default:default2
1412default:default8@Z8-689h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
din2default:default2
vga_top2default:default2v
`C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/vga_top.v2default:default2
502default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_top2default:default2
 2default:default2
112default:default2
12default:default2v
`C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/vga_top.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
dds_compiler_12default:default2
 2default:default2?
?C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.runs/synth_1/.Xil/Vivado-11080-DESKTOP-OA2P2AF/realtime/dds_compiler_1_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
dds_compiler_12default:default2
 2default:default2
122default:default2
12default:default2?
?C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.runs/synth_1/.Xil/Vivado-11080-DESKTOP-OA2P2AF/realtime/dds_compiler_1_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322default:default2'
s_axis_config_tdata2default:default2
162default:default2"
dds_compiler_12default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
1092default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2

sweep_ctrl2default:default2
 2default:default2p
ZC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/sweep.v2default:default2
232default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter static_1k bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter sweep_1k_to_100k bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter PEROID bound to: 9 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
clk_div2default:default2
 2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/clk_div.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter cnt_max_100k bound to: 8'b11111001 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter cnt_max_1m bound to: 6'b011000 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter cnt_max_10m bound to: 3'b001 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_div2default:default2
 2default:default2
132default:default2
12default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/clk_div.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

sweep_ctrl2default:default2
 2default:default2
142default:default2
12default:default2p
ZC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/sweep.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
adc_samp_ctrl2default:default2
 2default:default2s
]C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/adc_samp.v2default:default2
232default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter Count bound to: 3'b001 
2default:defaulth p
x
? 
?
default block is never used226*oasys2s
]C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/adc_samp.v2default:default2
682default:default8@Z8-226h px? 
?
default block is never used226*oasys2s
]C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/adc_samp.v2default:default2
932default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
adc_samp_ctrl2default:default2
 2default:default2
152default:default2
12default:default2s
]C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/adc_samp.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
all_ctrl2default:default2
 2default:default2s
]C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/all_ctrl.v2default:default2
252default:default8@Z8-6157h px? 
j
%s
*synth2R
>	Parameter MODE_SWEEP_CNT bound to: 24999999 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter MODE_STATIC_CNT bound to: 4999999 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
all_ctrl2default:default2
 2default:default2
162default:default2
12default:default2s
]C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/all_ctrl.v2default:default2
252default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	Calculate2default:default2
 2default:default2t
^C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/Calculate.v2default:default2
232default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter Rs_in bound to: 985 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter RL_out bound to: 2000 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2!
blk_mem_gen_02default:default2
 2default:default2?
?C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.runs/synth_1/.Xil/Vivado-11080-DESKTOP-OA2P2AF/realtime/blk_mem_gen_0_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
blk_mem_gen_02default:default2
 2default:default2
172default:default2
12default:default2?
?C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.runs/synth_1/.Xil/Vivado-11080-DESKTOP-OA2P2AF/realtime/blk_mem_gen_0_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
242default:default2
dina2default:default2
82default:default2!
blk_mem_gen_02default:default2t
^C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/Calculate.v2default:default2
3392default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
242default:default2
doutb2default:default2
82default:default2!
blk_mem_gen_02default:default2t
^C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/Calculate.v2default:default2
3432default:default8@Z8-689h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
cutoff_freq2default:default2
	Calculate2default:default2t
^C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/Calculate.v2default:default2
672default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Calculate2default:default2
 2default:default2
182default:default2
12default:default2t
^C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/Calculate.v2default:default2
232default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
dout_xl2default:default2
242default:default2
	Calculate2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
1682default:default8@Z8-689h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
242default:default2
input_res_q2default:default2
162default:default2
	Calculate2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
1692default:default8@Z8-689h px? 
?
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2!
calculate_top2default:default2
	Calculate2default:default2
232default:default2
222default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
1542default:default8@Z8-350h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
clk_xl2default:default2
dds_top2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
602default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
en_xl2default:default2
dds_top2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
612default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2

output_res2default:default2
dds_top2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
662default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
dout_x2default:default2
dds_top2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
912default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
dds_top2default:default2
 2default:default2
192default:default2
12default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
232default:default8@Z8-6155h px? 
?
!design %s has unconnected port %s3331*oasys2
	Calculate2default:default2$
cutoff_freq_q[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
	Calculate2default:default2$
cutoff_freq_q[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
	Calculate2default:default2$
cutoff_freq_q[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
	Calculate2default:default2$
cutoff_freq_q[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
	Calculate2default:default2$
cutoff_freq_q[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
	Calculate2default:default2$
cutoff_freq_q[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
	Calculate2default:default2$
cutoff_freq_q[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
	Calculate2default:default2$
cutoff_freq_q[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

freq_chart2default:default2 
data_require2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2

freq_chart2default:default2
din[7]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2

freq_chart2default:default2
din[6]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2

freq_chart2default:default2
din[5]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2

freq_chart2default:default2
din[4]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2

freq_chart2default:default2
din[3]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2

freq_chart2default:default2
din[2]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2

freq_chart2default:default2
din[1]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2

freq_chart2default:default2
din[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
vga_top2default:default2 
freq_data[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
vga_top2default:default2 
freq_data[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
vga_top2default:default2 
freq_data[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
vga_top2default:default2 
freq_data[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
vga_top2default:default2 
freq_data[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
vga_top2default:default2 
freq_data[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
vga_top2default:default2 
freq_data[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
vga_top2default:default2 
freq_data[0]2default:defaultZ8-3331h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 506.266 ; gain = 186.625
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
	chart_ram2default:default2
data[0]2default:default2y
cC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/vga/freq_chart.v2default:default2
1552default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[23]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[22]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[21]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[20]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[19]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[18]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[17]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[16]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[15]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[14]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[13]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[12]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[11]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2
RO_data[10]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2

RO_data[9]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2

RO_data[8]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2

RO_data[7]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2

RO_data[6]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2

RO_data[5]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2

RO_data[4]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2

RO_data[3]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2

RO_data[2]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2

RO_data[1]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2 
vga_top_inst2default:default2

RO_data[0]2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
862default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2!
calculate_top2default:default2
clk_xl2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
1542default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2!
calculate_top2default:default2
en_xl2default:default2r
\C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/dds_top.v2default:default2
1542default:default8@Z8-3295h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 506.266 ; gain = 186.625
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 506.266 ; gain = 186.625
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
Loading part %s157*device2$
xc7a100tfgg676-22default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2/
calculate_top/GainFreqRam	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2/
calculate_top/GainFreqRam	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
~c:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2.
vga_top_inst/vga_clk_gen	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
~c:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2.
vga_top_inst/vga_clk_gen	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
~c:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default28
"sweep_top/dac_clk_gen/gen_100m_clk	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
~c:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default28
"sweep_top/dac_clk_gen/gen_100m_clk	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/ip/dds_compiler_1/dds_compiler_1/dds_compiler_1_in_context.xdc2default:default2 

dds_ip_top	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/ip/dds_compiler_1/dds_compiler_1/dds_compiler_1_in_context.xdc2default:default2 

dds_ip_top	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2u
_C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/constrs_1/new/dac14bit.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2u
_C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/constrs_1/new/dac14bit.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2s
_C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/constrs_1/new/dac14bit.xdc2default:default2-
.Xil/dds_top_propImpl.xdc2default:defaultZ1-236h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
878.8552default:default2
0.0782default:defaultZ17-268h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
878.9342default:default2
0.0742default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
878.9342default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0212default:default2
878.9342default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 878.934 ; gain = 559.293
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tfgg676-2
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 878.934 ; gain = 559.293
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 878.934 ; gain = 559.293
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
cnt_v2default:defaultZ8-5546h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2$
update_state_reg2default:default2

freq_chart2default:defaultZ8-802h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
we2default:default2
32default:default2
52default:defaultZ8-5544h px? 
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
done2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

update_add2default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2%
update_next_state2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2%
update_next_state2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2%
update_next_state2default:default2
12default:default2
52default:defaultZ8-5544h px? 
|
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2 
clk_100k_buf2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

clk_1m_buf2default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
clk_10m_buf2default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

peroid_cnt2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
state2default:default2
42default:default2
52default:defaultZ8-5544h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
Av_2002default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2*
load_on_off_switch_reg2default:defaultZ8-5546h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                    WAIT |                              001 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                UPDATING |                              010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                    DONE |                              100 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2$
update_state_reg2default:default2

freq_chart2default:defaultZ8-3898h px? 
?
!inferring latch for variable '%s'327*oasys2!
input_res_reg2default:default2t
^C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/Calculate.v2default:default2
1102default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
output_res_reg2default:default2t
^C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/Calculate.v2default:default2
1112default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	Av_1k_reg2default:default2t
^C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/Calculate.v2default:default2
1122default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2

Av_10k_reg2default:default2t
^C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/Calculate.v2default:default2
1152default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2

Av_200_reg2default:default2t
^C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/Calculate.v2default:default2
1162default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
Av_200k_reg2default:default2t
^C:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.srcs/sources_1/new/Calculate.v2default:default2
1172default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 878.934 ; gain = 559.293
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|      |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|1     |vga_top__GB0  |           1|     24662|
2default:defaulth p
x
? 
\
%s
*synth2D
0|2     |vpp_pix       |           1|     10977|
2default:defaulth p
x
? 
\
%s
*synth2D
0|3     |vga_top__GB2  |           1|     22204|
2default:defaulth p
x
? 
\
%s
*synth2D
0|4     |dds_top__GC0  |           1|      8139|
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     12 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 17    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              160 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 598   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 42    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 18    
2default:defaulth p
x
? 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                11x32  Multipliers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               2K Bit         RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     80 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     24 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input     16 Bit        Muxes := 17    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input     16 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      4 Bit        Muxes := 33    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      3 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      2 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 30    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
<
%s
*synth2$
Module dds_top 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit       Adders := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module data_change__3 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
<
%s
*synth2$
Module vpp_pix 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              160 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 112   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     80 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      4 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
Module vga_ctrl 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     24 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module data_change__2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
;
%s
*synth2#
Module RI_pix 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              160 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 128   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     80 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      4 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
C
%s
*synth2+
Module data_change__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
;
%s
*synth2#
Module RO_pix 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              160 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 134   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     80 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      4 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
@
%s
*synth2(
Module data_change 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
Module vmin_pix 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              160 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 112   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     80 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      4 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module data_change__4 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
Module vmax_pix 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              160 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 112   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     80 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      4 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
Module ram_dual 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               2K Bit         RAMs := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module freq_chart 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 4     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
<
%s
*synth2$
Module clk_div 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
?
%s
*synth2'
Module sweep_ctrl 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
B
%s
*synth2*
Module adc_samp_ctrl 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
? 
=
%s
*synth2%
Module all_ctrl 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
>
%s
*synth2&
Module Calculate 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     12 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                11x32  Multipliers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2.
freq_chart_inst/update_add2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2*
load_on_off_switch_reg2default:defaultZ8-5546h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
Av_2002default:defaultZ8-5546h px? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_0_out2default:defaultZ8-5546h px? 
t
%s
*synth2\
HDSP Report: Generating DSP input_res1, operation Mode is: A2*(B:0x3d9).
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: register vpp_in_reg is absorbed into DSP input_res1.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: operator input_res1 is absorbed into DSP input_res1.
2default:defaulth p
x
? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys24
 sweep_top/dac_clk_gen/clk_1m_buf2default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys25
!sweep_top/dac_clk_gen/clk_10m_buf2default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2&
adc_samp_top/state2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys26
"sweep_top/dac_clk_gen/clk_100k_buf2default:defaultZ8-5546h px? 
?
iOptimized %s bits of RAM "%s" due to constant propagation. Old ram width %s bits, new ram width %s bits.
4187*oasys2
72default:default25
!freq_chart_inst/chart_ram/ram_reg2default:default2
82default:default2
12default:defaultZ8-5784h px? 
?
?The signal %s is implemented as block RAM but is better mapped onto distributed LUT RAM for the following reason(s): The depth (%s address bits) is shallow. Please use attribute (* ram_style = "distributed" *) to instruct Vivado to infer distributed LUT RAM.
4035*oasys25
!freq_chart_inst/chart_ram/ram_reg2default:default2
82default:defaultZ8-5583h px? 
?
PSwapped enable and write-enable on %s RAM instances of RAM %s to conserve power
3784*oasys2
12default:default25
!freq_chart_inst/chart_ram/ram_reg2default:defaultZ8-4652h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_9_reg[8][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_9_reg[9][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_9_reg[10][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_9_reg[17][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_9_reg[23][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_9_reg[25][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_8_reg[18][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_8_reg[17][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_8_reg[25][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_7_reg[21][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_7_reg[23][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[25][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[23][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[22][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[20][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[16][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[15][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[14][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[12][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_6_reg[9][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_6_reg[8][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_6_reg[7][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_5_reg[7][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_5_reg[12][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_5_reg[14][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_5_reg[15][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_5_reg[22][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_5_reg[24][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2D
0\vga_top_inst/vpp_pix_inst /\data_4_reg[20][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2D
0\vga_top_inst/vpp_pix_inst /\data_4_reg[17][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_4_reg[16][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_4_reg[15][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_4_reg[14][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_4_reg[13][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_4_reg[9][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_4_reg[12][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_4_reg[10][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_4_reg[7][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_4_reg[6][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_3_reg[13][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_3_reg[14][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_3_reg[5][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_3_reg[7][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_3_reg[17][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_3_reg[20][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_3_reg[22][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_3_reg[23][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_3_reg[24][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_2_reg[24][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_2_reg[21][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_2_reg[20][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_2_reg[19][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_2_reg[18][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_2_reg[16][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_2_reg[15][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_2_reg[14][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_2_reg[13][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_2_reg[12][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_2_reg[8][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_2_reg[7][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_2_reg[6][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_1_reg[7][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_1_reg[8][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_1_reg[9][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_1_reg[10][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_1_reg[22][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_1_reg[24][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_1_reg[6][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2D
0\vga_top_inst/vpp_pix_inst /\data_0_reg[15][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2D
0\vga_top_inst/vpp_pix_inst /\data_0_reg[14][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2D
0\vga_top_inst/vpp_pix_inst /\data_0_reg[13][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_0_reg[12][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_0_reg[7][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_0_reg[6][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_0_reg[24][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_0_reg[23][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_0_reg[22][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_0_reg[21][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_0_reg[18][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_0_reg[17][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2D
0\vga_top_inst/vpp_pix_inst /\data_0_reg[16][15] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\vga_top_inst/vpp_pix_inst /\data_9_reg[8][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2C
/\vga_top_inst/vpp_pix_inst /\data_9_reg[9][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2D
0\vga_top_inst/vpp_pix_inst /\data_9_reg[10][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_9_reg[17][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_9_reg[23][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_9_reg[25][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_8_reg[18][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_8_reg[17][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_8_reg[25][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_7_reg[21][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_7_reg[23][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[25][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[23][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[22][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[20][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[16][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[15][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[14][14] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2D
0\vga_top_inst/vpp_pix_inst /\data_6_reg[12][14] 2default:defaultZ8-3333h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33332default:default2
1002default:defaultZ17-14h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2:
&vga_top_inst/vpp_pix_inst/temp_reg[14]2default:default2
FD2default:default2:
&vga_top_inst/vpp_pix_inst/temp_reg[13]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[158]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[157]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[157]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[156]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[155]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[154]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[154]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[153]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[141]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[130]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[140]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[131]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[139]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[132]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[138]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[133]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[137]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[136]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[136]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[135]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[135]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[134]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[126]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[125]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[125]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[124]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[124]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[123]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[123]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[122]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[122]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[121]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[121]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[120]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[120]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[119]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[119]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[118]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[118]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[117]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[117]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[116]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[116]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[115]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[115]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[114]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RO_pix_inst/temp_reg[114]2default:default2
FD2default:default2=
)vga_top_insti_1/RO_pix_inst/temp_reg[113]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(vga_top_insti_1/RO_pix_inst/temp_reg[30]2default:default2
FD2default:default2<
(vga_top_insti_1/RO_pix_inst/temp_reg[29]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(vga_top_insti_1/RO_pix_inst/temp_reg[12]2default:default2
FD2default:default2;
'vga_top_insti_1/RO_pix_inst/temp_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'vga_top_insti_1/RO_pix_inst/temp_reg[8]2default:default2
FD2default:default2;
'vga_top_insti_1/RO_pix_inst/temp_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[158]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[157]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[157]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[156]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[155]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[154]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[154]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[153]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[141]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[140]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[140]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[139]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[139]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[138]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[138]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[137]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[137]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[134]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[136]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[135]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[134]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[133]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[133]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[132]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[132]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[131]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[131]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[130]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[126]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[125]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[125]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[124]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[124]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[123]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[123]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[122]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[122]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[121]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[121]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[120]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[120]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[119]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[119]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[118]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[118]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[117]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[117]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[116]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[116]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[115]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[115]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[114]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_top_insti_1/RI_pix_inst/temp_reg[114]2default:default2
FD2default:default2=
)vga_top_insti_1/RI_pix_inst/temp_reg[113]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(vga_top_insti_1/RI_pix_inst/temp_reg[30]2default:default2
FD2default:default2<
(vga_top_insti_1/RI_pix_inst/temp_reg[29]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(vga_top_insti_1/RI_pix_inst/temp_reg[12]2default:default2
FD2default:default2;
'vga_top_insti_1/RI_pix_inst/temp_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'vga_top_insti_1/RI_pix_inst/temp_reg[8]2default:default2
FD2default:default2;
'vga_top_insti_1/RI_pix_inst/temp_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(vga_top_insti_1/RO_pix_inst/temp_reg[11]2default:default2
FD2default:default2;
'vga_top_insti_1/RO_pix_inst/temp_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(vga_top_insti_1/RO_pix_inst/temp_reg[10]2default:default2
FD2default:default2;
'vga_top_insti_1/RO_pix_inst/temp_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(vga_top_insti_1/RI_pix_inst/temp_reg[11]2default:default2
FD2default:default2;
'vga_top_insti_1/RI_pix_inst/temp_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(vga_top_insti_1/RI_pix_inst/temp_reg[10]2default:default2
FD2default:default2;
'vga_top_insti_1/RI_pix_inst/temp_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2J
6vga_top_insti_2/vmin_pix_inst/ri_inst/reg_temp_reg[19]2default:default2
FDCE2default:default2I
5vga_top_insti_2/vmin_pix_inst/ri_inst/reg_temp_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2J
6vga_top_insti_2/vmax_pix_inst/ri_inst/reg_temp_reg[19]2default:default2
FDCE2default:default2I
5vga_top_insti_2/vmax_pix_inst/ri_inst/reg_temp_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2C
/vga_top_insti_2/vmin_pix_inst/ri_inst/q1_reg[3]2default:default2
FDCE2default:default2K
7vga_top_insti_2/vmin_pix_inst/ri_inst/point_flag_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2I
5vga_top_insti_2/vmin_pix_inst/ri_inst/reg_temp_reg[2]2default:default2
FDCE2default:default2I
5vga_top_insti_2/vmin_pix_inst/ri_inst/reg_temp_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2I
5vga_top_insti_2/vmin_pix_inst/ri_inst/reg_temp_reg[3]2default:default2
FDCE2default:default2I
5vga_top_insti_2/vmin_pix_inst/ri_inst/reg_temp_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2C
/vga_top_insti_2/vmax_pix_inst/ri_inst/q1_reg[3]2default:default2
FDCE2default:default2K
7vga_top_insti_2/vmax_pix_inst/ri_inst/point_flag_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2I
5vga_top_insti_2/vmax_pix_inst/ri_inst/reg_temp_reg[2]2default:default2
FDCE2default:default2I
5vga_top_insti_2/vmax_pix_inst/ri_inst/reg_temp_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2I
5vga_top_insti_2/vmax_pix_inst/ri_inst/reg_temp_reg[3]2default:default2
FDCE2default:default2I
5vga_top_insti_2/vmax_pix_inst/ri_inst/reg_temp_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7vga_top_insti_2/vmin_pix_inst/ri_inst/point_flag_reg[0]2default:default2
FDCE2default:default2J
6vga_top_insti_2/vmin_pix_inst/ri_inst/kilo_flag_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7vga_top_insti_2/vmin_pix_inst/ri_inst/point_flag_reg[1]2default:default2
FDCE2default:default2I
5vga_top_insti_2/vmin_pix_inst/ri_inst/reg_temp_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2J
6vga_top_insti_2/vmin_pix_inst/ri_inst/kilo_flag_reg[1]2default:default2
FDCE2default:default2I
5vga_top_insti_2/vmin_pix_inst/ri_inst/reg_temp_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7vga_top_insti_2/vmax_pix_inst/ri_inst/point_flag_reg[0]2default:default2
FDCE2default:default2J
6vga_top_insti_2/vmax_pix_inst/ri_inst/kilo_flag_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2K
7vga_top_insti_2/vmax_pix_inst/ri_inst/point_flag_reg[1]2default:default2
FDCE2default:default2I
5vga_top_insti_2/vmax_pix_inst/ri_inst/reg_temp_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2J
6vga_top_insti_2/vmax_pix_inst/ri_inst/kilo_flag_reg[1]2default:default2
FDCE2default:default2I
5vga_top_insti_2/vmax_pix_inst/ri_inst/reg_temp_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*vga_top_insti_2/vmin_pix_inst/temp_reg[14]2default:default2
FD2default:default2>
*vga_top_insti_2/vmin_pix_inst/temp_reg[13]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*vga_top_insti_2/vmax_pix_inst/temp_reg[14]2default:default2
FD2default:default2>
*vga_top_insti_2/vmax_pix_inst/temp_reg[13]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*vga_top_insti_2/vmin_pix_inst/temp_reg[13]2default:default2
FD2default:default2>
*vga_top_insti_2/vmin_pix_inst/temp_reg[12]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2>
*vga_top_insti_2/vmax_pix_inst/temp_reg[13]2default:default2
FD2default:default2>
*vga_top_insti_2/vmax_pix_inst/temp_reg[12]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2?
+vga_top_insti_1/RO_pix_inst/inst3/d1_reg[3]2default:default2
FDC2default:default2?
+vga_top_insti_1/RO_pix_inst/inst3/d4_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2?
+vga_top_insti_1/RO_pix_inst/inst3/d1_reg[1]2default:default2
FDC2default:default2?
+vga_top_insti_1/RO_pix_inst/inst3/d4_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2?
+vga_top_insti_1/RO_pix_inst/inst3/d1_reg[0]2default:default2
FDC2default:default2?
+vga_top_insti_1/RO_pix_inst/inst3/d4_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2?
+vga_top_insti_1/RO_pix_inst/inst3/d1_reg[2]2default:default2
FDC2default:default2?
+vga_top_insti_1/RO_pix_inst/inst3/d4_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2?
+vga_top_insti_1/RO_pix_inst/inst3/d4_reg[3]2default:default2
FDC2default:default2?
+vga_top_insti_1/RO_pix_inst/inst3/d4_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2?
+vga_top_insti_1/RO_pix_inst/inst3/d4_reg[1]2default:default2
FDC2default:default2?
+vga_top_insti_1/RO_pix_inst/inst3/d4_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2?
+vga_top_insti_1/RO_pix_inst/inst3/d4_reg[0]2default:default2
FDC2default:default2?
+vga_top_insti_1/RO_pix_inst/inst3/d4_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2F
2vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[19]2default:default2
FDCE2default:default2F
2vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[18]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2F
2vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[17]2default:default2
FDCE2default:default2F
2vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[18]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2F
2vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[16]2default:default2
FDCE2default:default2F
2vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[18]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2F
2vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[18]2default:default2
FDCE2default:default2E
1vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2E
1vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[7]2default:default2
FDCE2default:default2E
1vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2E
1vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[5]2default:default2
FDCE2default:default2E
1vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2E
1vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[4]2default:default2
FDCE2default:default2E
1vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2E
1vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[6]2default:default2
FDCE2default:default2E
1vga_top_insti_1/RO_pix_inst/inst3/reg_temp_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2?
+vga_top_insti_1/RO_pix_inst/inst3/q1_reg[3]2default:default2
FDCE2default:default2G
3vga_top_insti_1/RO_pix_inst/inst3/point_flag_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2?
+vga_top_insti_1/RO_pix_inst/inst3/q1_reg[1]2default:default2
FDCE2default:default2G
3vga_top_insti_1/RO_pix_inst/inst3/point_flag_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2?
+vga_top_insti_1/RO_pix_inst/inst3/q1_reg[0]2default:default2
FDCE2default:default2G
3vga_top_insti_1/RO_pix_inst/inst3/point_flag_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2?
+vga_top_insti_1/RO_pix_inst/inst3/q1_reg[2]2default:default2
FDCE2default:default2G
3vga_top_insti_1/RO_pix_inst/inst3/point_flag_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2?
+vga_top_insti_1/RO_pix_inst/inst3/q4_reg[3]2default:default2
FDCE2default:default2G
3vga_top_insti_1/RO_pix_inst/inst3/point_flag_reg[1]2default:defaultZ8-3886h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:49 ; elapsed = 00:01:52 . Memory (MB): peak = 921.180 ; gain = 601.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
2
%s*synth2

ROM:
2default:defaulth px? 
v
%s*synth2^
J+------------+-------------------------+---------------+----------------+
2default:defaulth px? 
w
%s*synth2_
K|Module Name | RTL Object              | Depth x Width | Implemented As | 
2default:defaulth px? 
v
%s*synth2^
J+------------+-------------------------+---------------+----------------+
2default:defaulth px? 
w
%s*synth2_
K|sweep_ctrl  | ten_per_cnt             | 256x19        | LUT            | 
2default:defaulth px? 
w
%s*synth2_
K|sweep_ctrl  | dds_ctrl_data           | 256x9         | LUT            | 
2default:defaulth px? 
w
%s*synth2_
K|dds_top     | sweep_top/ten_per_cnt   | 256x19        | LUT            | 
2default:defaulth px? 
w
%s*synth2_
K|dds_top     | sweep_top/dds_ctrl_data | 256x9         | LUT            | 
2default:defaulth px? 
w
%s*synth2_
K+------------+-------------------------+---------------+----------------+

2default:defaulth px? 
e
%s*synth2M
9
Block RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | RTL Object | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px? 
?
%s*synth2?
?+------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|ram_dual:   | ram_reg    | 256 x 8(NO_CHANGE)     | W |   | 256 x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?+------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px? 
_
%s*synth2G
3
DSP: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2?
}+------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
~|Module Name | DSP Mapping  | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
}+------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
~|Calculate   | A2*(B:0x3d9) | 12     | 10     | -      | -      | 22     | 1    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
~+------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2I
5vga_top_insti_2/i_0/freq_chart_inst/chart_ram/ram_reg2default:default2
Block2default:defaultZ8-6837h px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|      |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|1     |vga_top__GB0  |           1|      4200|
2default:defaulth p
x
? 
\
%s
*synth2D
0|2     |vpp_pix       |           1|      2560|
2default:defaulth p
x
? 
\
%s
*synth2D
0|3     |vga_top__GB2  |           1|      5283|
2default:defaulth p
x
? 
\
%s
*synth2D
0|4     |dds_top__GC0  |           1|      1715|
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2(
vga_clk_gen/clk_out12default:default21
vga_clk_gen/bbstub_clk_out1/O2default:defaultZ8-5578h px? 
?
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2?
+sweep_top/dac_clk_gen/gen_100m_clk/clk_out12default:default2H
4sweep_top/dac_clk_gen/gen_100m_clk/bbstub_clk_out1/O2default:defaultZ8-5578h px? 
?
SMoved %s constraints on hierarchical pins to their respective driving/loading pins
4235*oasys2
22default:defaultZ8-5819h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:02:02 ; elapsed = 00:02:05 . Memory (MB): peak = 921.180 ; gain = 601.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:02:06 ; elapsed = 00:02:09 . Memory (MB): peak = 991.238 ; gain = 671.598
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
N
%s
*synth26
"
Block RAM: Final Mapping  Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name | RTL Object | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|ram_dual:   | ram_reg    | 256 x 8(NO_CHANGE)     | W |   | 256 x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|      |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|1     |vga_top__GB0  |           1|      4200|
2default:defaulth p
x
? 
\
%s
*synth2D
0|2     |vpp_pix       |           1|      2560|
2default:defaulth p
x
? 
\
%s
*synth2D
0|3     |vga_top__GB2  |           1|      5283|
2default:defaulth p
x
? 
\
%s
*synth2D
0|4     |dds_top__GC0  |           1|      1715|
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2B
.vga_top_inst/freq_chart_inst/chart_ram/ram_reg2default:default2
Block2default:defaultZ8-6837h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:02:12 ; elapsed = 00:02:15 . Memory (MB): peak = 1246.273 ; gain = 926.633
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:02:14 ; elapsed = 00:02:17 . Memory (MB): peak = 1246.273 ; gain = 926.633
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:02:14 ; elapsed = 00:02:17 . Memory (MB): peak = 1246.273 ; gain = 926.633
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:02:14 ; elapsed = 00:02:17 . Memory (MB): peak = 1246.273 ; gain = 926.633
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:02:14 ; elapsed = 00:02:17 . Memory (MB): peak = 1246.273 ; gain = 926.633
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:02:15 ; elapsed = 00:02:18 . Memory (MB): peak = 1246.273 ; gain = 926.633
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:02:15 ; elapsed = 00:02:18 . Memory (MB): peak = 1246.273 ; gain = 926.633
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
? 
P
%s
*synth28
$|      |BlackBox name  |Instances |
2default:defaulth p
x
? 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
? 
P
%s
*synth28
$|1     |dds_compiler_1 |         1|
2default:defaulth p
x
? 
P
%s
*synth28
$|2     |blk_mem_gen_0  |         1|
2default:defaulth p
x
? 
P
%s
*synth28
$|3     |clk_wiz_0      |         2|
2default:defaulth p
x
? 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px? 
L
%s*synth24
 |      |Cell           |Count |
2default:defaulth px? 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px? 
L
%s*synth24
 |1     |blk_mem_gen_0  |     1|
2default:defaulth px? 
L
%s*synth24
 |2     |clk_wiz_0      |     1|
2default:defaulth px? 
L
%s*synth24
 |3     |clk_wiz_0__2   |     1|
2default:defaulth px? 
L
%s*synth24
 |4     |dds_compiler_1 |     1|
2default:defaulth px? 
L
%s*synth24
 |5     |BUFG           |     1|
2default:defaulth px? 
L
%s*synth24
 |6     |CARRY4         |   335|
2default:defaulth px? 
L
%s*synth24
 |7     |DSP48E1        |     1|
2default:defaulth px? 
L
%s*synth24
 |8     |LUT1           |   117|
2default:defaulth px? 
L
%s*synth24
 |9     |LUT2           |   309|
2default:defaulth px? 
L
%s*synth24
 |10    |LUT3           |   985|
2default:defaulth px? 
L
%s*synth24
 |11    |LUT4           |   218|
2default:defaulth px? 
L
%s*synth24
 |12    |LUT5           |   230|
2default:defaulth px? 
L
%s*synth24
 |13    |LUT6           |  2021|
2default:defaulth px? 
L
%s*synth24
 |14    |MUXF7          |   438|
2default:defaulth px? 
L
%s*synth24
 |15    |MUXF8          |   193|
2default:defaulth px? 
L
%s*synth24
 |16    |RAMB18E1       |     1|
2default:defaulth px? 
L
%s*synth24
 |17    |FDCE           |   252|
2default:defaulth px? 
L
%s*synth24
 |18    |FDPE           |     1|
2default:defaulth px? 
L
%s*synth24
 |19    |FDRE           |   784|
2default:defaulth px? 
L
%s*synth24
 |20    |FDSE           |    23|
2default:defaulth px? 
L
%s*synth24
 |21    |LDC            |    16|
2default:defaulth px? 
L
%s*synth24
 |22    |IBUF           |    14|
2default:defaulth px? 
L
%s*synth24
 |23    |OBUF           |    47|
2default:defaulth px? 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
`
%s
*synth2H
4+------+--------------------+--------------+------+
2default:defaulth p
x
? 
`
%s
*synth2H
4|      |Instance            |Module        |Cells |
2default:defaulth p
x
? 
`
%s
*synth2H
4+------+--------------------+--------------+------+
2default:defaulth p
x
? 
`
%s
*synth2H
4|1     |top                 |              |  6032|
2default:defaulth p
x
? 
`
%s
*synth2H
4|2     |  adc_samp_top      |adc_samp_ctrl |    37|
2default:defaulth p
x
? 
`
%s
*synth2H
4|3     |  calculate_top     |Calculate     |  1843|
2default:defaulth p
x
? 
`
%s
*synth2H
4|4     |  sweep_top         |sweep_ctrl    |    90|
2default:defaulth p
x
? 
`
%s
*synth2H
4|5     |    dac_clk_gen     |clk_div       |    23|
2default:defaulth p
x
? 
`
%s
*synth2H
4|6     |  vga_top_inst      |vga_top       |  3945|
2default:defaulth p
x
? 
`
%s
*synth2H
4|7     |    RO_pix_inst     |RO_pix        |    73|
2default:defaulth p
x
? 
`
%s
*synth2H
4|8     |    RI_pix_inst     |RI_pix        |   415|
2default:defaulth p
x
? 
`
%s
*synth2H
4|9     |      ri_inst       |data_change_2 |   181|
2default:defaulth p
x
? 
`
%s
*synth2H
4|10    |    freq_chart_inst |freq_chart    |    30|
2default:defaulth p
x
? 
`
%s
*synth2H
4|11    |      chart_ram     |ram_dual      |     1|
2default:defaulth p
x
? 
`
%s
*synth2H
4|12    |    vga_ctrl_inst   |vga_ctrl      |  2091|
2default:defaulth p
x
? 
`
%s
*synth2H
4|13    |    vmax_pix_inst   |vmax_pix      |   333|
2default:defaulth p
x
? 
`
%s
*synth2H
4|14    |      ri_inst       |data_change_1 |   137|
2default:defaulth p
x
? 
`
%s
*synth2H
4|15    |    vmin_pix_inst   |vmin_pix      |   294|
2default:defaulth p
x
? 
`
%s
*synth2H
4|16    |      ri_inst       |data_change_0 |   137|
2default:defaulth p
x
? 
`
%s
*synth2H
4|17    |    vpp_pix_inst    |vpp_pix       |   706|
2default:defaulth p
x
? 
`
%s
*synth2H
4|18    |      ri_inst       |data_change   |    56|
2default:defaulth p
x
? 
`
%s
*synth2H
4+------+--------------------+--------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:02:15 ; elapsed = 00:02:18 . Memory (MB): peak = 1246.273 ; gain = 926.633
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 6 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:02:01 ; elapsed = 00:02:09 . Memory (MB): peak = 1246.273 ; gain = 553.965
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:02:15 ; elapsed = 00:02:18 . Memory (MB): peak = 1246.273 ; gain = 926.633
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
9842default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1246.2732default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2\
H  A total of 16 instances were transformed.
  LDC => LDCE: 16 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
3942default:default2
1722default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:02:182default:default2
00:02:212default:default2
1246.2732default:default2
938.1412default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1246.2732default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2l
XC:/WorkSpace/Diansai/DDS_ALL_0722_per_split/DDS_14bitDAC/DDS_IP.runs/synth_1/dds_top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2x
dExecuting : report_utilization -file dds_top_utilization_synth.rpt -pb dds_top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Jul 26 08:47:07 20212default:defaultZ17-206h px? 


End Record