x = input('Enter a value for x: ');
tol = input('Enter a value for tolerance: ');
sumPrev = 1;
n = 1;
dif = 2*tol;

while dif >= tol
    sumNew = sumPrev + (x^n)/(factorial(n));
    dif = abs((sumPrev-sumNew)/sumPrev);
    sumPrev = sumNew;
    n = n+1;
end
    fprintf('The Taylor Series approximation for your entered value is %f \n', sumNew);

