library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use IEEE.MATH_REAL.ALL;

entity comparador is
	generic(
			DATA_WIDTH : natural := 16
	);
   port (  
		A : in unsigned((DATA_WIDTH-1) downto 0);
      B : in unsigned((DATA_WIDTH-1) downto 0);
      output : out std_logic -- greater, equal, smaller  : out std_logic
    ); -- output:OUT STD_LOGIC_VECTOR(3 downto 0)
end comparador;
    
architecture comportamental of comparador is
begin
    process(A, B)
    begin
        if (A = B) then
            output <= '0';
        elsif (A > B) then
            output <= '1';
        else
            output <= '0';
        end if;
    end process;
end comportamental;