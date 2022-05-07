LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ForwardingUnit IS PORT (
	ex_mem_rf_load : IN STD_LOGIC;
	ex_mem_rf_a3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

	mem_wb_rf_load : IN STD_LOGIC;
	mem_wb_rf_a3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

	or_ex_rf_a1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	or_ex_rf_a2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

	forward_select_a : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	forward_select_b : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END ENTITY ForwardingUnit;

ARCHITECTURE forward OF ForwardingUnit IS
BEGIN
	forward_selection_process : PROCESS (ex_mem_rf_load, ex_mem_rf_a3, mem_wb_rf_load, mem_wb_rf_a3, or_ex_rf_a1, or_ex_rf_a2)
	BEGIN
		-- Forward selection for ALU A (don't need to handle the immediate case)
		IF ((ex_mem_rf_load = '1') AND (ex_mem_rf_a3 = or_ex_rf_a1)) THEN
			forward_select_a <= "01";
		ELSIF ((mem_wb_rf_load = '1') AND (mem_wb_rf_a3 = or_ex_rf_a1)) THEN
			forward_select_a <= "10";
		ELSE
			forward_select_a <= "00";
		END IF;

		-- Forward selection for ALU B (with immediate case handling
		IF ((ex_mem_rf_load = '1') AND (ex_mem_rf_a3 = or_ex_rf_a2)) THEN
			forward_select_a <= "01";
		ELSIF ((mem_wb_rf_load = '1') AND (mem_wb_rf_a3 = or_ex_rf_a1)) THEN
			forward_select_b <= "10";
		ELSE
			forward_select_b <= "00";
		END IF;

	END PROCESS forward_selection_process;
END ARCHITECTURE forward;