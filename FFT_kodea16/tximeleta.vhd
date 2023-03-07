library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.funtzio_lagungarriak.ALL;

entity tximeleta is 
   port(
      sarrera1,sarrera2 : in complex;      --Sarrerak
      w :in complex;      -- W balioa
      irteera1,irteera2 :out complex      -- Irteerak
   );
end tximeleta;

architecture Behavioral of tximeleta is 

begin 

--tximeleta ekuazioa.
irteera1 <= batuketa(sarrera1,biderketa(sarrera2,w));
irteera2 <= kenketa(sarrera1,biderketa(sarrera2,w));

end Behavioral;