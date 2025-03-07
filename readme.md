# Thermodynamics with Matlab

These are programs are based on Thermodynamics' problems developed in Matlab

> ## Heat transfer in Quasi Static process from Internal Energy Relation
> 
> ### Problem Statement
> A fluid system undergoes a non-flow frictionless process following the pressure-volume relation as p = (5/V) + 1.5 where p is in bar and V is in cubic meter. During the process the volume changes from 0.15 cubic metres to 0.05 cubic metres and the system rejects 45 KJ of heat, Determine the change in internal energy and change in enthalpy.
> 
> ### Program script
> **[Change in Internal Energy and Enthalpy](change_in_IE_and_E.m)**


> ## Efficiency of Proposed Engine
>
> ### Problem Statement
> An inventor proposes an engine that operates between the 27 degree Celsius warm surface layer of the ocean and a 10 degree Celsius layer a few meters down. The inventor claims that the engine produces 100 kW by pumping 20 Kg/s of seawater. Is this possible?
>
> ### Program script
> **[Efficiency of proposed_engine](efficiency_of_proposed_engine.m)**


> ## Efficiency of Steam Power Plant
>
> ### Problem Statment
> Simulate the Rankine cycle, compute its efficiency and visualize the thermodynamic processes using Temperature(T) vs specific enthropy(s) and Enthalpy(H) vs Specific entropy(s)
> 
> ### Program Statement
> **[Efficiency of power plant](Power_plant.py)**
>
>> ### Description
>> This program simulate the working of Steam Power plants based on the Rankine cycle; therefore in order to simulate steam properties and attain values we use an external script **XSteam**.  
>>
>> ### Source & citation
>> The script is developed by Magnus Holmgren and is available at: <br>
>> **[Matlab File Exchange: XSteam](https://in.mathworks.com/matlabcentral/fileexchange/9817-x-steam-thermodynamic-properties-of-water-and-steam)** <br>
>>
>> If you use this project in your work, please *cite the original author* as follows:
>>
>> **Magnus Holmgren (2025). X Steam, Thermodynamic properties of water and steam. (https://www.mathworks.com/matlabcentral/fileexchange/9817-x-steam-thermodynamic-properties-of-water-and-steam), MATLAB Central File Exchange. Retrieved March 7, 2025.**
>>
>> ### Installation Instruction
>> 1. Download 'XSteam.m' from [Matlab File Exchange: XSteam](https://in.mathworks.com/matlabcentral/fileexchange/9817-x-steam-thermodynamic-properties-of-water-and-steam)
>> 2. Place 'Xsteam.m' in the same directory as the [Power Plant](power_plant.py) or add it to your MATLAB path.