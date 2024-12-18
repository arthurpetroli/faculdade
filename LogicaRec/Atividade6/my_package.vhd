-- ---------------------------------------------------------
package my_package is

    type Inputs is array (0 to 3) of integer ;
    procedure min_max (signal numbers: in Inputs ; signal out_min: out integer, signal out_max: out integer);
    
end my_package ;
-- ---------------------------------------------------------
package body my_package is
    procedure min_max ( signal numbers: in Inputs ; signal out_min: out integer, signal out_max: out integer)         
    is
    variable min : integer := 99999;
    variable max : integer := -99999;
    begin
        for i in numbers'range loop 
            if numbers(i) < min then 
                min := numbers(i); 
            end if; 
            if numbers(i) > max then 
                max := numbers(i); 
            end if; 
        end loop;
        out_max <= max;
        out_min <= min;
    end min_max ;
end my_package ;