library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.MATH_REAL.ALL;
library work;
use work.funtzio_lagungarriak.ALL;

entity fft16 is
port(   sar : in konplexu_lista16; --sarrera seinalea denbora domeinuan
        irt : out konplexu_lista16  --irteera seinalea frekuentzia domeinuan
        );
end fft16;

architecture Behavioral of fft16 is

component tximeleta is 
   port(
      sarrera1,sarrera2 : in complex;      --sarrerak
      w :in complex;      -- W balioa
      irteera1,irteera2 :out complex      -- irteerak
   );
end component;  
    
signal uneko1,uneko2, uneko3 : konplexu_lista16 := (others => (0.0,0.0));

--Fourier tranform formulako W balioak.
constant w : konplexu_lista8 := ( (1.0,0.0), (0.9238,-0.3826), (0.7071,-0.7071), (0.3826,-0.9238), (0.0,-1.0), (-0.3826,-0.9238), (-0.7071,-0.7071), (-0.9238,-0.3826) );

begin

--tximeleta lehen fasea.
tximeleta11 : tximeleta port map(sar(0),sar(8),w(0),uneko1(0),uneko1(1));
tximeleta12 : tximeleta port map(sar(4),sar(12),w(0),uneko1(2),uneko1(3));
tximeleta13 : tximeleta port map(sar(2),sar(10),w(0),uneko1(4),uneko1(5));
tximeleta14 : tximeleta port map(sar(6),sar(14),w(0),uneko1(6),uneko1(7));
tximeleta15 : tximeleta port map(sar(1),sar(9),w(0),uneko1(8),uneko1(9));
tximeleta16 : tximeleta port map(sar(5),sar(13),w(0),uneko1(10),uneko1(11));
tximeleta17 : tximeleta port map(sar(3),sar(11),w(0),uneko1(12),uneko1(13));
tximeleta18 : tximeleta port map(sar(7),sar(15),w(0),uneko1(14),uneko1(15));


--tximeleta bigarren fasea.
tximeleta21 : tximeleta port map(uneko1(0),uneko1(2),w(0),uneko2(0),uneko2(2));
tximeleta22 : tximeleta port map(uneko1(1),uneko1(3),w(4),uneko2(1),uneko2(3));
tximeleta23 : tximeleta port map(uneko1(4),uneko1(6),w(0),uneko2(4),uneko2(6));
tximeleta24 : tximeleta port map(uneko1(5),uneko1(7),w(4),uneko2(5),uneko2(7));
tximeleta25 : tximeleta port map(uneko1(8),uneko1(10),w(0),uneko2(8),uneko2(10));
tximeleta26 : tximeleta port map(uneko1(9),uneko1(11),w(4),uneko2(9),uneko2(11));
tximeleta27 : tximeleta port map(uneko1(12),uneko1(14),w(0),uneko2(12),uneko2(14));
tximeleta28 : tximeleta port map(uneko1(13),uneko1(15),w(4),uneko2(13),uneko2(15));

--tximeleta hirugarren fasea.
tximeleta31 : tximeleta port map(uneko2(0),uneko2(4),w(0),uneko3(0),uneko3(4));
tximeleta32 : tximeleta port map(uneko2(1),uneko2(5),w(2),uneko3(1),uneko3(5));
tximeleta33 : tximeleta port map(uneko2(2),uneko2(6),w(4),uneko3(2),uneko3(6));
tximeleta34 : tximeleta port map(uneko2(3),uneko2(7),w(6),uneko3(3),uneko3(7));
tximeleta35 : tximeleta port map(uneko2(8),uneko2(12),w(0),uneko3(8),uneko3(12));
tximeleta36 : tximeleta port map(uneko2(9),uneko2(13),w(2),uneko3(9),uneko3(13));
tximeleta37 : tximeleta port map(uneko2(10),uneko2(14),w(4),uneko3(10),uneko3(14));
tximeleta38 : tximeleta port map(uneko2(11),uneko2(15),w(6),uneko3(11),uneko3(15));

--tximeleta laugarren fasea.
tximeleta41 : tximeleta port map(uneko3(0),uneko3(8),w(0),irt(0),irt(8));
tximeleta42 : tximeleta port map(uneko3(1),uneko3(9),w(1),irt(1),irt(9));
tximeleta43 : tximeleta port map(uneko3(2),uneko3(10),w(2),irt(2),irt(10));
tximeleta44 : tximeleta port map(uneko3(3),uneko3(11),w(3),irt(3),irt(11));
tximeleta45 : tximeleta port map(uneko3(12),uneko3(4),w(4),irt(12),irt(4));
tximeleta46 : tximeleta port map(uneko3(13),uneko3(5),w(5),irt(13),irt(5));
tximeleta47 : tximeleta port map(uneko3(14),uneko3(6),w(6),irt(14),irt(6));
tximeleta48 : tximeleta port map(uneko3(15),uneko3(7),w(7),irt(15),irt(7));

    
end Behavioral;
