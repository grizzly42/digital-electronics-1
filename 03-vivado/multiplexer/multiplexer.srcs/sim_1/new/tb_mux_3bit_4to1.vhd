------------------------------------------------------------
--
-- Testbench for 4-bit binary comparator.
-- Nexys A7-50T, xc7a50ticsg324-1L
-- TerosHDL, Vivado 2020.2
--
-- Copyright (c) 2020 Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------

entity tb_mux_3bit is
  -- Entity of testbench is always empty
end entity tb_mux_3bit;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------

architecture testbench of tb_mux_3bit is

  -- Testbench local signals
  signal sig_b           : std_logic_vector(2 downto 0);
  signal sig_a           : std_logic_vector(2 downto 0);
  signal sig_c           : std_logic_vector(2 downto 0);
  signal sig_d           : std_logic_vector(2 downto 0);
  signal sig_sel_i       : std_logic_vector(1 downto 0);
  signal sig_f_O         :  std_logic_vector(2 downto 0);

begin

  -- Connecting testbench signals with comparator_4bit
  -- entity (Unit Under Test)
  uut_mux_3bit : entity work.mux_3bit
    port map (
      b_i           => sig_b,
      a_i           => sig_a,
      c_i           => sig_c,
      d_i          => sig_d,
      sel_i        => sig_sel_i ,
      f_O  => sig_f_O
    );

  --------------------------------------------------------
  -- Data generation process
  --------------------------------------------------------
  p_stimulus : process is
  begin

    -- Report a note at the beginning of stimulus process
    report "Stimulus process started";

    -- First test case ...
    sig_a <= "100";
    sig_b <= "000";
    sig_c <= "000";
    sig_d <= "000";
    sig_sel_i <= "00";
    wait for 100 ns;
    -- ... and its expected outputs
    assert (
            (sig_f_O = "100") 
        )
      -- If false, then report an error
      -- If true, then do not report anything
      report "00 FAILED"
      severity error;

        -- 2 test case ...
    sig_a <= "011";
    sig_b <= "100";
    sig_c <= "001";
    sig_d <= "010";
    sig_sel_i <= "01";
    wait for 100 ns;
    -- ... and its expected outputs
    assert (
            (sig_f_O = "100") 
        )
      -- If false, then report an error
      -- If true, then do not report anything
      report "01 FAILED"
      severity error;
      
          -- First test case ...
    sig_a <= "001";
    sig_b <= "011";
    sig_c <= "100";
    sig_d <= "110";
    sig_sel_i <= "10";
    wait for 100 ns;
    -- ... and its expected outputs
    assert (
            (sig_f_O = "100") 
        )
      -- If false, then report an error
      -- If true, then do not report anything
      report "10 FAILED"
      severity error;
      
          -- First test case ...
    sig_a <= "001";
    sig_b <= "011";
    sig_c <= "110";
    sig_d <= "100";
    sig_sel_i <= "11";
    wait for 100 ns;
    -- ... and its expected outputs
    assert (
            (sig_f_O = "100") 
        )
      -- If false, then report an error
      -- If true, then do not report anything
      report "11 FAILED"
      severity error;

    -- Report a note at the end of stimulus process
    report "Stimulus process finished";

    wait; -- Data generation process is suspended forever

  end process p_stimulus;

end architecture testbench;
