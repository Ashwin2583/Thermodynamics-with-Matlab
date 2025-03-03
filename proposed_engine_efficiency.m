%Program for Steam Power Plant Efficiency
%We define the state points
%inlet of turbine or outlet of boilder-1
%inlet of condenser or out let of turbine-2
%inlet of the pump or out let of the condenser-3
%inlet to the boiler or outlet of the pump -4

fprintf("Process(1-2) Isoentropic expansion of turbine\n")
fprintf("Process(2-3) Heat rejection in condenser\n")
fprintf("Process(3-4) Isentropic compression in pump\n")
fprintf("Process(1-4) Heat abosorption in boiler\n")

%inputs
p1 = input("Pressure at the inlet of the turbine in bar: ");
t1 = input("Temperature at the inlet of the turbine in degree celsius: ");
p2 = input("Pressure at the outlet of the turbine in bar: ");

%State variables at point 1
h1 = XSteam('h_pT',p1,t1);
s1 = XSteam('s_pT',p1,t1);
v1 = XSteam('v_pT',p1,t1);

%Sate varibales at point 2
s2 = s1;
h2 = XSteam('h_px',p2,XSteam('x_ps',p2,s2));
t2 = XSteam('T_ps',p2,s2);
v2 = XSteam('v_ps',p2,s2);

%State varibles at point 3
p3 = p2;
t3 = XSteam('Tsat_p',p3);
h3 = XSteam('hL_p',p3);
s3 = XSteam('sL_P',p3);
v3 = XSteam('vL_p',p3);

%State varibales at point 4
s4 = s3;
p4 = p1;
h4 = XSteam('h_ps',p4,s4);
v4 = XSteam('v_ps',p4,s4);
t4 = XSteam('T_ps',p4,s4);

%plotting graph for Rankine "T" vs "s"
figure(1)
hold on
plot([s1 s2],[t1 t2],"Color",'r','LineWidth',5);
plot([s2 s3],[t2 t3],"Color",'k','LineWidth',5);
plot([s3 s4],[t3 t4],"Color",'c','LineWidth',5);
Trange = linspace(t4,t1,500);
for i = 1:length(Trange)
    s_range(i)= XSteam('s_pT',p1,Trange(i));
    h_range23(i) = XSteam('h_ps',p1,s_range(i));
    h_range41(i) = XSteam('h_ps',p2,s_range(i));
end
plot(s_range,Trange,'Color','b','LineWidth',5);
legend('ReversibleAdiabaticExpansion', 'IsobaricHeatRjection', 'ReversibleIsoentropicCompression','IsobaricHeatAbsorption');

%Plotting graph for 'T' vs 's'
T_range = linspace(0,374.15,500);
figure(1)
hold on
for i = 1:length(T_range)
    plot(XSteam('sL_t',T_range(i)),T_range(i),'Color','g');
    plot(XSteam('sV_T',T_range(i)),T_range(i),'Color','g');
end

%Plotting diagram for state points for ideal Rankine cycle T vs S
figure(1)
hold on 
plot(s1,t1,'ko');
plot(s2,t2,'ko');
plot(s3,t3,'ko');
plot(s4,t4,'ko');
grid on
title("T-s digram of Rankine cycle");
xlabel("temperature")
ylabel("Specific entropy")

%plotting h vs s
figure(2)
hold on 
plot([s1 s2],[h1 h2],'Color','r','LineWidth',5);
plot(s_range, h_range41,'Color','k','LineWidth',5)
plot([s3 s4],[h3 h4],'Color','c','LineWidth',5)
plot(s_range,h_range41,'Color','b','LineWidth',5)
legend('ReversibleAdiabaticExpansion', 'IsobaricHeatRjection', 'ReversibleIsoentropicCompression','IsobaricHeatAbsorption');

figure(2)
hold on
for i = 1:length(T_range)
    plot(XSteam('sL_t',T_range(i)),XSteam('hL_t',T_range(i)),'.','color','g')
    plot(XSteam('sV_t',T_range(i)),XSteam('hV_t',T_range(i)),'.','color','g')
end
figure(2)
hold on
plot(s1,h1,'ko')
plot(s2,h2,'ko')
plot(s3,h3,'ko')
plot(s4,h4,'ko')
grid on
title('h-s digram of Rankine Cycle')
xlabel('Enthalpy in [KJ/Kg]')
ylabel('Specific entropy in [KJ\Kg K]')

work_turbine = h1 - h2;
Q_takenout_condenser = h2 - h3;
work_pump = h4 - h3;
Q_given_boiler = h1 - h4;
back_work_ratio =work_turbine/work_pump;
SSE = 3600 / (work_turbine - work_pump);
work_net = work_turbine - work_pump;
efficiency = work_net / Q_given_boiler;
fprintf("The efficiency is ")
disp(efficiency)

