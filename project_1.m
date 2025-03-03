%Input values
Q = input('Enter the heat released: ');
V1 = input('Enter the initial volume: ');
V2 = input('Enter the final volume: ');

%Given Relation
syms v
p(v) = (5/v) + 1.5;

%processes
w = int(p,V1,V2)*(10^5);

deltaU = (Q)*(10^3) - w;
disp('The change in internal energy is = ')
disp(double(deltaU)/1000)

deltaH = deltaU + ((p(V2)*(10^5))*V2 - (p(V1)*(10^5))*V1);
disp('The change in Enthalpy is = ')
disp(double(deltaH)/1000)

