VERILOG = iverilog
TARGET = 0506.vcd
TEMP = 0506.vpp

$(TARGET) : $(TEMP)
	vvp $(TEMP)

$(TEMP): BCD.v TestBench.v
	$(VERILOG) -o $(TEMP) BCD.v TestBench.v

clean:
	rm $(TARGET)