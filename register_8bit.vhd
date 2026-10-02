library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_8bit is
    Port (
        D   : in  STD_LOGIC_VECTOR (7 downto 0);
        Clk : in  STD_LOGIC;
        Q   : out STD_LOGIC_VECTOR (7 downto 0)
    );
end register_8bit;

architecture Behavioral of register_8bit is
begin

    process(Clk)
    begin
        if Clk'event and Clk = '1' then
            Q <= D;
        end if;
    end process;

end Behavioral;
