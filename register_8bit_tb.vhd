library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_8bit_tb is
end register_8bit_tb;

architecture behavior of register_8bit_tb is

    component register_8bit
        Port (
            D   : in  STD_LOGIC_VECTOR (7 downto 0);
            Clk : in  STD_LOGIC;
            Q   : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;
	  signal D   : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal Clk : STD_LOGIC := '0';
    signal Q   : STD_LOGIC_VECTOR (7 downto 0);

begin

    uut: register_8bit
        port map (
            D   => D,
            Clk => Clk,
            Q   => Q
        );

    Clk <= not Clk after 10 ns;

    stim_proc: process
    begin
	 
 D <= "00000000";
        wait for 20 ns;

        D <= "10101010";
        wait for 20 ns;

        D <= "01010101";
        wait for 20 ns;

        D <= "11110000";
        wait for 20 ns;

        D <= "00001111";
        wait for 20 ns;

        D <= "11111111";
        wait for 20 ns;

        wait;

    end process;

end behavior;
