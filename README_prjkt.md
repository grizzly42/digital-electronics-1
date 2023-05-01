
# VHDL project - Časovač na intervalový (kruhový) trénink

### Team members

* Radim Pařízek 
* Martin Mička 
* Jakub Pachel 

## Theoretical description and explanation

Cílem tohoto projektu bylo vytvořit časovač pro kruhový trénink. Tento časovač by měl být navržen pro na vývojové desce XILINX Nexys A7 (Artix-7 50T),
která využívá vysokokapacitní FPGA. Pro návrh tothoto časovače využijeme z hardwarových součástek 4 místný sedmisegmentový displej, tlačítka a přepínače.
Tato deska bude naprogramována v programovacím jazyku VHDL.

Časovač bude umožňovat nastavení počtu kol, délky cvičícího kola a také délku pauzy mezi koly.

## Hardware description of demo application

Z hardwarových součástek využíváme 4 přepínače, 5 tlačítek a 4 sedmisegmentové displeje. PřepínaČ úpúlně v pravo je určen pro přepnutí do módu nastavování, Přepínač první z leva je pro přepnutí do nastavování délky doby tréninku, přpínač druhý z leva je úrčen pro nastavování délky doby pauzy a třetí z leva je pro nastavování počtu kol. 

## Software description

Put flowchats/state diagrams of your algorithm(s) and direct links to source/testbench files in `src` and `sim` folders. 

![diagram](https://user-images.githubusercontent.com/61315339/235538320-8d389bdf-28bb-4661-9fe9-6571cd6a70f4.png)


### Component(s) simulation

Write descriptive text and simulation screenshots of your components.

## Instructions

Write an instruction manual for your application, including photos or a link to a video.
<img width="606" alt="manual" src="https://user-images.githubusercontent.com/61315339/235537917-ad89aa39-6605-4a73-b41e-47314a45cf56.png">


## References

1. Put here the literature references you used.
2. ...
