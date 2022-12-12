library ieee;
use IEEE.STD_LOGIC_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use IEEE.MATH_REAL.ALL;

entity cancela is

   port( 
		CLK	 : in std_logic;
		Input  : in std_logic;
		Output : out std_logic
	); 

end entity;
	


architecture rtl of cancela is
signal valor 			: boolean := false;
signal novo_valor		: boolean := true;
signal mudar_estado 	: boolean;
begin
process(clk,Input)
	begin
	if (valor /= novo_valor) then
		mudar_estado <= false;
	end if;
	if (clk'EVENT and clk = '1') then
		valor <= novo_valor;
	end if;
	if (Input = '0') then 
		mudar_estado <= true;
	end if;
end process;

process(CLK, Input)
begin
	if (mudar_estado = true) then
		--wait for 250 ns;
		if (valor = true) then
			Output <= '0';
			valor  <= false;
			novo_valor <= true;
		else
			Output <= '1';
			valor  <= true;
			novo_valor <= false;
		end if;
	end if;
end process;
	

end rtl;




