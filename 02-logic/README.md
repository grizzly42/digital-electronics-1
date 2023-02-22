# Lab 2: JAKUB PACHEL

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

 <img width="155" alt="first_kmap" src="https://user-images.githubusercontent.com/61315339/219480957-878ed617-0131-4c49-9d55-2419c6bc1974.png">


   Less than:

   <img width="155" alt="second_kmap" src="https://user-images.githubusercontent.com/61315339/219481858-22e0511d-0cad-4dc3-bedb-471c0ddc1d97.png">


2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   <img width="525" alt="eq02" src="https://user-images.githubusercontent.com/61315339/219482243-71c2607e-42ff-40fb-8e67-4d9b0e034661.png">


### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **240671**

```vhdl
     p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0111";        --  ID = xxxx71
        s_a <= "0001";        --  ID = xxxx71
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination invalid FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait;
    end process p_stimulus;
```

2. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/x/FVrE)
