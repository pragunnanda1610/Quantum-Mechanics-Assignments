x = 0:0.001:0.1;
a=0.1;                          %length of the box
m=9.102*10^-31;                 %mass of electron
hbar = (6.602*10^-34)/(2*pi);   %Planck's constant

syms psi(x,t)                   %create a function psi(x,t)
psi(x,t) = sqrt(1/3)*sqrt(2/a)*sin(14*pi*x/a)*exp((-i*(14^2)*(pi^2)*hbar*t)/(2*m*(a^2))) + sqrt(1/3)*sqrt(2/a)*sin(12*pi*x/a)*exp((-i*(122^2)*(pi^2)*hbar*t)/(2*m*(a^2))) + sqrt(1/3)*sqrt(2/a)*sin(17*pi*x/a)*exp((-i*(17^2)*(pi^2)*hbar*t)/(2*m*(a^2)));
                                %define psi

fplot (psi(x,0), [0 0.1]), xlabel('x'), ylabel('\Psi(x,0)')                         %plot psi(x,t) vs x for diff values of t; add axis labels
fplot (real(psi(x,30)), [0 0.1]), xlabel('x'), ylabel('\Psi(x,30)')
fplot (abs(psi(x,0))^2, [0 0.1]), xlabel('x'), ylabel('|\Psi(x,0)|^{2}')
fplot (abs(real(psi(x,30)))^2, [0 0.1]), xlabel('x'), ylabel('|\Psi(x,30)|^{2}')
