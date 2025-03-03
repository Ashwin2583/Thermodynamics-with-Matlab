%efficiency of an engine

%constants
c_p = 4.18;

%inputs
t_H = input("Higher temperature: ");
T_H = t_H + 273;
t_L = input("Lower temperature: ");
T_L = t_L + 273;
w = input("Work done: ");
m = input("The quantity of water pumped: ");

%processes
ratio = T_L/T_H;
carnot_n = 1 - ratio; %efficiency of carnot engine operating between T_H and T_L
Q_H = m*c_p*(T_H - T_L); %maximum heat transfer from high temperature
engine_n = w/Q_H; %efficiency of the proposed engine

disp("The efficiency of carnot engine operating between the given temperatures = ")
disp(carnot_n)

disp("The efficiency of the proposed engine = ")
disp(engine_n)

if engine_n > carnot_n
    fprintf("The engine is impossible")
else 
    fprintf("The engine is possible")
end




