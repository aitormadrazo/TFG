LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
library work;
use work.funtzio_lagungarriak.all;

ENTITY test_modulua IS
END test_modulua;

ARCHITECTURE behavior OF test_modulua IS 
   signal sar,irt : konplexu_lista16;

BEGIN

    -- Sortu FFT modula
   fft: entity work.fft16 PORT MAP (
          sar => sar,
          irt => irt

        );
    
   -- proba prozesua
   main: process
   begin        
    --lagin sarrerak denbora domeinuan.
      sar(0) <= (0.0,0.0);   
      sar(1) <= (1.0,0.0); 
      sar(2) <= (2.0,0.0); 
      sar(3) <= (3.0,0.0);    
      sar(4) <= (4.0,0.0); 
      sar(5) <= (5.0,0.0); 
      sar(6) <= (6.0,0.0);  
      sar(7) <= (7.0,0.0);
	  sar(8) <= (8.0,0.0);   
      sar(9) <= (9.0,0.0); 
      sar(10) <= (10.0,0.0); 
      sar(11) <= (11.0,0.0);    
      sar(12) <= (12.0,0.0); 
      sar(13) <= (13.0,0.0); 
      sar(14) <= (14.0,0.0);  
      sar(15) <= (15.0,0.0);  
      wait;
   end process;

END;
