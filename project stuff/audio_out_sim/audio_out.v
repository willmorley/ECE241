// audio_out.v

// Generated using ACDS version 16.0 211

`timescale 1 ps / 1 ps
module audio_out (
		input  wire        reg_clk,     //       control_clock.clk
		input  wire        reg_reset,   // control_clock_reset.reset
		input  wire        aud_clk,     //           din_clock.clk
		input  wire        reset,       //     din_clock_reset.reset
		output wire        aud_ready,   //                 din.ready
		input  wire        aud_valid,   //                    .valid
		input  wire        aud_sop,     //                    .startofpacket
		input  wire        aud_eop,     //                    .endofpacket
		input  wire [7:0]  aud_channel, //                    .channel
		input  wire [23:0] aud_data,    //                    .data
		input  wire        aes_clk,     //   conduit_aes_audio.export
		output wire        aes_de,      //                    .export
		output wire        aes_ws,      //                    .export
		output wire        aes_data,    //                    .export
		input  wire [7:0]  channel0,    //     conduit_control.export
		input  wire [7:0]  channel1,    //                    .export
		output wire [7:0]  fifo_status, //                    .export
		input  wire        fifo_reset   //                    .export
	);

	clocked_audio_output #(
		.G_CAO_FIFO_DEPTH       (4),
		.G_CAO_INCLUDE_CTRL_REG (0)
	) audio_out_inst (
		.reg_clk       (reg_clk),     //       control_clock.clk
		.reg_reset     (reg_reset),   // control_clock_reset.reset
		.aud_clk       (aud_clk),     //           din_clock.clk
		.reset         (reset),       //     din_clock_reset.reset
		.aud_ready     (aud_ready),   //                 din.ready
		.aud_valid     (aud_valid),   //                    .valid
		.aud_sop       (aud_sop),     //                    .startofpacket
		.aud_eop       (aud_eop),     //                    .endofpacket
		.aud_channel   (aud_channel), //                    .channel
		.aud_data      (aud_data),    //                    .data
		.aes_clk       (aes_clk),     //   conduit_aes_audio.export
		.aes_de        (aes_de),      //                    .export
		.aes_ws        (aes_ws),      //                    .export
		.aes_data      (aes_data),    //                    .export
		.channel0      (channel0),    //     conduit_control.export
		.channel1      (channel1),    //                    .export
		.fifo_status   (fifo_status), //                    .export
		.fifo_reset    (fifo_reset),  //                    .export
		.reg_address   (3'b000),      //         (terminated)
		.reg_write     (1'b0),        //         (terminated)
		.reg_writedata (8'b00000000), //         (terminated)
		.reg_read      (1'b0),        //         (terminated)
		.reg_readdata  ()             //         (terminated)
	);

endmodule