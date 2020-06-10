//这道题还有诸多疑问
//This is often the opposite of how one would think about a (sequential, imperative) programming
//problem, where one would look at the inputs first then decide on an action (or output)
//串行编程即可以理解为软件编程 ，imperative： 表示命令的，祈使的，相当于if else
module top_module(
	input ring, 
	input vibrate_mode,
	output ringer,
	output motor
);
	
	// When should ringer be on? When (phone is ringing) and (phone is not in vibrate mode)
	assign ringer = ring & ~vibrate_mode;
	
	// When should motor be on? When (phone is ringing) and (phone is in vibrate mode)
	assign motor = ring & vibrate_mode;
	
endmodule
