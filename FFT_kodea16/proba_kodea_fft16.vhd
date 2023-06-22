LIBRARY ieee;
--use ieee.fixed_float_types.all;
--use ieee.fixed_pkg.all;
USE ieee.std_logic_1164.ALL;
library work;
use work.funtzio_lagungarriak.all;

--library IEEE_PROPOSED;
--use ieee.numeric_std.all;
--use ieee_proposed.fixed_float_types.all;
--use ieee_proposed.fixed_pkg.all;

library IEEE_PROPOSED;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee_proposed.fixed_float_types.all;
use ieee_proposed.fixed_pkg.all;
use ieee_proposed.float_pkg.all;

ENTITY test_modulua IS
END test_modulua;

ARCHITECTURE behavior OF test_modulua IS 
  signal sar,irt : konplexu_lista16;
  --signal s1,s2 : sfixed(4 downto -3);
  --signal s3 : sfixed(5 downto -3);
  
  --signal s1,s2 : float32;
  --signal s3 : float32;

BEGIN

    -- Sortu FFT modula
   fft: entity work.fft16 PORT MAP (
          sar => sar,
          irt => irt

        );
    
   -- proba prozesua
   main: process
   begin 
   --s1 <= to_float (5.75);     -- s1 = "00101110" = 5.75
   --s2 <= to_float (-6.5);     -- s2 = "11001100" = -6.5
  --wait for 200ns;  
   --s3 <= s1+s2;                   -- s3 = "111111010" = -0.75     
   
    --lagin sarrerak denbora domeinuan.
      sar(0) <= (to_float(0.0),to_float(0.0));   
      sar(1) <= (to_float(1.0),to_float(0.0)); 
      sar(2) <= (to_float(2.0),to_float(0.0)); 
      sar(3) <= (to_float(3.0),to_float(0.0));    
      sar(4) <= (to_float(4.0),to_float(0.0)); 
      sar(5) <= (to_float(5.0),to_float(0.0)); 
      sar(6) <= (to_float(6.0),to_float(0.0));  
      sar(7) <= (to_float(7.0),to_float(0.0));
	  sar(8) <= (to_float(8.0),to_float(0.0));   
      sar(9) <= (to_float(9.0),to_float(0.0)); 
      sar(10) <= (to_float(10.0),to_float(0.0)); 
      sar(11) <= (to_float(11.0),to_float(0.0));    
      sar(12) <= (to_float(12.0),to_float(0.0)); 
      sar(13) <= (to_float(13.0),to_float(0.0)); 
      sar(14) <= (to_float(14.0),to_float(0.0));  
      sar(15) <= (to_float(15.0),to_float(0.0));  
      wait;
   end process;

END;
