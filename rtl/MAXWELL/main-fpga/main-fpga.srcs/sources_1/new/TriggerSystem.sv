`default_nettype none
`timescale 1ns/1ps
/***********************************************************************************************************************
*                                                                                                                      *
* STARSHIPRAIDER v0.1                                                                                                  *
*                                                                                                                      *
* Copyright (c) 2012-2020 Andrew D. Zonenberg                                                                          *
* All rights reserved.                                                                                                 *
*                                                                                                                      *
* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the     *
* following conditions are met:                                                                                        *
*                                                                                                                      *
*    * Redistributions of source code must retain the above copyright notice, this list of conditions, and the         *
*      following disclaimer.                                                                                           *
*                                                                                                                      *
*    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the       *
*      following disclaimer in the documentation and/or other materials provided with the distribution.                *
*                                                                                                                      *
*    * Neither the name of the author nor the names of any contributors may be used to endorse or promote products     *
*      derived from this software without specific prior written permission.                                           *
*                                                                                                                      *
* THIS SOFTWARE IS PROVIDED BY THE AUTHORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   *
* TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL *
* THE AUTHORS BE HELD LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES        *
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR       *
* BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT *
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE       *
* POSSIBILITY OF SUCH DAMAGE.                                                                                          *
*                                                                                                                      *
***********************************************************************************************************************/

`include "InputState.svh"

/**
	@file
	@author Andrew D. Zonenberg
	@brief Trigger engine
 */
module TriggerSystem(
	input wire			clk_312mhz,

	input wire			sync_clk_p,
	input wire			sync_clk_n,

	input wire			mcu_1588_pps,

	input wire			pps_in_p,
	input wire			pps_in_n,

	input wire			ext_trig_p,
	input wire			ext_trig_n,

	output wire			trig_out_p,
	output wire			trig_out_n,

	output logic		trig_out	= 0,

	input wire sample_t	current_sample
);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// I/O buffers

	wire	sync_clk;

	DifferentialInputBuffer #(
		.WIDTH(1),
		.IOSTANDARD("LVDS_25"),
		.ODT(0),
		.OPTIMIZE("SPEED")
	) ibuf_sync_clk (
		.pad_in_p(sync_clk_p),
		.pad_in_n(sync_clk_n),
		.fabric_out(sync_clk)
	);

	//inverted for routability
	wire	pps_in_inv;
	wire	pps_in = !pps_in_inv;

	DifferentialInputBuffer #(
		.WIDTH(1),
		.IOSTANDARD("LVDS_25"),
		.ODT(0),
		.OPTIMIZE("SPEED")
	) ibuf_pps_in (
		.pad_in_p(pps_in_p),
		.pad_in_n(pps_in_n),
		.fabric_out(pps_in_inv)
	);

	wire	ext_trig;

	DifferentialInputBuffer #(
		.WIDTH(1),
		.IOSTANDARD("LVDS_25"),
		.ODT(0),
		.OPTIMIZE("SPEED")
	) ibuf_ext_trig (
		.pad_in_p(ext_trig_p),
		.pad_in_n(ext_trig_n),
		.fabric_out(ext_trig)
	);

	DifferentialOutputBuffer #(
		.WIDTH(1),
		.IOSTANDARD("LVDS_25"),
		.SLEW("FAST")
	) obuf_trig_out (
		.pad_out_p(trig_out_p),
		.pad_out_n(trig_out_n),
		.fabric_in(trig_out)
	);

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Pipeline delay on the input to allow for propagation across the chip to the trigger blocks

	sample_t	current_sample_ff;
	sample_t	current_sample_ff2;

	always_ff @(posedge clk_312mhz) begin
		current_sample_ff	<= current_sample;
		current_sample_ff2	<= current_sample_ff;
	end

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Trigger fabric

	/*
		SERIAL DATA ENGINES
			4x 8 bit
			4x 16 bit
			4x 24 bit
			4x 32 bit

			Output of each one feeds into 4x
	 */

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Deserialization blocks (2 cycle latency)

	/*
	localparam NUM_SERIAL8_BLOCKS	= 2;

	chnum_t[NUM_SERIAL8_BLOCKS*3 - 1 : 0]	xbar_selects;

	wire[7:0]	serdes_out[NUM_SERIAL8_BLOCKS-1:0];
	wire		serdes_out_valid[NUM_SERIAL8_BLOCKS-1:0];

	for(genvar g=0; g<NUM_SERIAL8_BLOCKS; g++) begin

		//Input crossbar (3 lanes per block)
		lssample_t[2:0]	xbar_out;

		InputCrossbar #(
			.OUTPUT_COUNT(3)
		) xbar (
			.clk(clk_312mhz),
			.din(current_sample_ff2),
			.selects(xbar_selects[g*3 +: 3]),
			.dout(xbar_out)
		);

		SerialCapture #(
			.SERDES_RATE(8)
		) serdes (
			.clk(clk_312mhz),
			.sample_on_rising(1),
			.sample_on_falling(1),
			.data(xbar_out[1]),
			.clock(xbar_out[0]),
			.reset(xbar_out[2]),
			.sampled(serdes_out[g]),
			.sampled_valid(serdes_out_valid[g])
		);

	end

	//For now, use a VIO to control them
	vio_0 vio(
		.clk(clk_312mhz),
		.probe_in0(serdes_out[0]),
		.probe_in1(serdes_out[1]),
		.probe_in2(serdes_out_valid[0]),
		.probe_in3(serdes_out_valid[1]),
		.probe_out0(xbar_selects[0]),
		.probe_out1(xbar_selects[1]),
		.probe_out2(xbar_selects[2]),
		.probe_out3(xbar_selects[3]),
		.probe_out4(xbar_selects[4]),
		.probe_out5(xbar_selects[5])
	);
	*/

endmodule
