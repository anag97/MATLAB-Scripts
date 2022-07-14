% Hailstone sequence program

n = input('Enter a positive integer: ');
len = 0;
while n > 1
    if mod(n,2) == 0
        n = n/2;
    else
    n = 3*n+1;
    end
    len = len + 1;
end

fprintf("The length of the hailstone path is %i \n", len);