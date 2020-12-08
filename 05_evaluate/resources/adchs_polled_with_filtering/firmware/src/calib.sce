
// Scilab script to calculate coefficient for error compensation polynom 

function cf = polyfit(x,y,n)
A = ones(length(x),n+1)
for i=1:n
    A(:,i+1) = x(:).^i
end
cf = lsq(A,y(:))
endfunction

// Polynom 3rd order
n = 3  

// Real Value from Voltmeter
x = [ 0.0521    0.1119   0.2264     0.692     1.224     1.879     2.244     2.802    3.134     ];  
// ADC Value
d = [ 0.060439  0.120879 0.235117   0.706739  1.250695  1.920366  2.293479  2.859999 3.201684  ];  
// Difference between Real and ADC (Error of ADC))
y = d - x; 

coeff = polyfit(x,y,n)

t = linspace(0,3.3)';
yf = coeff(1) * t.^0 + coeff(2) * t.^1 + coeff(3) * t.^2 + coeff(4) * t.^3 ;

plot(t,yf)
plot(x,y,'r*')

// C source Code
//            double coeff[4] = { 0.0074853, 0.0070773, 0.0084309, -0.0014999 };
//            yy = coeff[0] + coeff[1] * xx + coeff[2] * xx*xx + coeff[3] * xx*xx*xx;
//            yy = input_voltage - yy;


