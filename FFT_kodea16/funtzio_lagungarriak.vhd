library IEEE;

--use IEEE.std_logic_1164.all;
--use IEEE.MATH_REAL.ALL;
--use ieee.numeric_std.all;
--use IEEE.fixed_pkg.all;
--use work.fixed_generic_pkg_mod.all;

--library IEEE_PROPOSED;
--use ieee_proposed.fixed_float_types.all;
--use ieee_proposed.fixed_pkg.all;

library IEEE_PROPOSED;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee_proposed.fixed_float_types.all;
use ieee_proposed.fixed_pkg.all;
use ieee_proposed.float_pkg.all;

package funtzio_lagungarriak is
--type fixed is array (integer range <>) of std_logic;
--subtype fixed32 is fixed (8 to -23);

type complex is 
    record
        r : float32;
        i : float32;
    end record;

type konplexu_lista16 is array (0 to 15) of complex;
type konplexu_lista8 is array (0 to 7) of complex;

function batuketa (n1,n2 : complex) return complex;
function kenketa (n1,n2 : complex) return complex;
function biderketa (n1,n2 : complex) return complex;

end funtzio_lagungarriak; 

package body funtzio_lagungarriak is 

--zenbaki konplexuen batuketa.
function batuketa (n1,n2 : complex) return complex is

variable bat : complex;

begin 
bat.r:=n1.r + n2.r;
bat.i:=n1.i + n2.i;
return bat;
end batuketa;

--zenbaki konplexuen kenketa.
function kenketa (n1,n2 : complex) return complex is

variable ken : complex;

begin 
ken.r:=n1.r - n2.r;
ken.i:=n1.i - n2.i;
return ken;
end kenketa;

--Zenbaki konplexuen biderketa.
function biderketa (n1,n2 : complex) return complex is

variable bider : complex;

begin 
bider.r:=(n1.r * n2.r) - (n1.i * n2.i);
bider.i:=(n1.r * n2.i) + (n1.i * n2.r);
return bider;
end biderketa;

end funtzio_lagungarriak;




