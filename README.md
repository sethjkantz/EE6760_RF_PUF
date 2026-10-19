# RIS Based RF-PUF
## By Seth Kantz and Matthew Delafield

### Description
MATLAB simulations to develop a Physical Unclonable Function (PUF) that is based on a Reconfigurable Intelligent Surface (RIS) and exploits the passive intermodulation behavior acros distinguishable RF signatures.

### Usage
Tested on MATLAB R2024b.  Open main.mlx and run all to execute the core behavior and generate the graphs.  See the source folder for the support functions developed for use.

### Structure
- main.mlx - Main file.
- src/RISDevice.m - Return element contributions due to the signal, states, 4 elemental nonlinearities
- src/PIMExtraction.m - Return the upper and lower third frequencies