library ieee;
use ieee.std_logic_1164.all;
use work.monte_carlo.all;

entity project392_tb is
    GENERIC (STOCK_WIDTH: natural := STOCK_W);
    port (
             premium_led_z : out std_logic_vector (7*(STOCK_WIDTH/4) -1 downto 0);
             --stock_out_led : out std_logic_vector (STOCK_WIDTH*2 - 1 downto 0)
             ready_z : out std_logic
    );
END project392_tb;


ARCHITECTURE struct OF project392_tb IS
    
    signal start_tb : std_logic;
    signal stock_price_tb,vol_tb : std_logic_vector(STOCK_WIDTH-1 DOWNTO 0);
    signal strike_price_tb : std_logic_vector(STOCK_WIDTH-1 DOWNTO 0);
    signal t_tb : std_logic_vector(3 downto 0);
    signal clk_tb : std_logic;
    signal reset_tb : std_logic;
    signal u_tb : std_logic_vector(STOCK_WIDTH-1 downto 0);

BEGIN
  
    u_tb <= x"0020";
    project392_map : project392 
    port map (
        clk=>clk_tb,
        start=>start_tb,
        stock_price=>stock_price_tb,
        strike_price=>strike_price_tb,
    vol => vol_tb,
    u => u_tb,
        t=>t_tb,
        premium_led => premium_led_z,
        ready => ready_z,
        reset => reset_tb
        
    );

    test_proc : PROCESS
    BEGIN
        stock_price_tb <= x"0100";
        strike_price_tb <= x"0180";
        t_tb <= x"d";
        vol_tb <= x"0100";
        start_tb <= '1';
        wait for 5 ns;
        clk_tb <= not '0';
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        --stop the START button to let it stop 
        start_tb <= '0';
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
	start_tb <= '1';
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        start_tb <= '1';
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        start_tb <= '0';
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        clk_tb <= not clk_tb;
        wait for 5 ns;
        wait;
   END PROCESS;
  END ARCHITECTURE struct;
    