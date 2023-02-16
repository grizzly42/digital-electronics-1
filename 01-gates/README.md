# Lab 1: JAKUB PACHEL

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

![Logic function](https://user-images.githubusercontent.com/61315339/218044591-f40d4da5-b226-4357-99c5-a627c8d83b62.png)

2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of gates is
begin
    f_orig_o <= (not(b_i) and a_i) or (c_i and not(b_i or not(a_i)));  
    f_nand_o <= (not(not(not(b_i) and a_i) and not(c_i and (not(b_i)and a_i))));
    f_nor_o  <= (not(b_i or not(a_i)) or not(c_i or (b_i or not(a_i)))); 
end architecture dataflow;
```

3. Complete table with logic functions' values:

   | **c** | **b** |**a** | **f_ORIG** | **f_(N)AND** | **f_(N)OR** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 0 | 0 | 0 | 0 | 0 |
   | 0 | 0 | 1 | 1 | 1 | 1 |
   | 0 | 1 | 0 | 0 | 0 | 0 |
   | 0 | 1 | 1 | 0 | 0 | 0 |
   | 1 | 0 | 0 | 0 | 0 | 0 |
   | 1 | 0 | 1 | 1 | 1 | 1 |
   | 1 | 1 | 0 | 0 | 0 | 0 |
   | 1 | 1 | 1 | 0 | 0 | 0 |

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   <img width="908" alt="Waveforms" src="https://user-images.githubusercontent.com/61315339/218045564-00fc6021-fc58-4db1-8291-7930a1d38349.png">


2. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/x/Aeyf)
