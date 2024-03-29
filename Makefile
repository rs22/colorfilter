SOLUTION_NAME ?= hls_operator_colorfilter_sln
SOLUTION_DIR ?= hls_operator_colorfilter_sln

HLS_CFLAGS = -std=c++11 -I$(METAL_ROOT)/src/metal_fpga/hw/hls/include

srcs += hls_operator_colorfilter.cpp

WRAPPER ?= $(shell jq -r .main operator.json)

include $(SNAP_ROOT)/actions/hls.mk
include $(METAL_ROOT)/src/metal_fpga/hw/hls/hls.mk
