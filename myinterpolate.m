function [yi] = myinterpolate(x1,y1,x2,y2,xi)

if y2==y1
    error('will yield non real number')
end
if ~isscalar(y1) || ~isscalar(x1) || ~isscalar(y2) || ~isscalar(x2) || ~isscalar(xi) 
	error('myinterpolate called with non-scalar argument')
    end
if ~isnumeric(y1) || isnan(y1) || isinf(y1) || ~isnumeric(x1) || isnan(x1) || isinf(x1) 
    error('myinterpolate called with non-numeric argument')
end
if ~isnumeric(y2) || isnan(y2) || isinf(y2) || ~isnumeric(x2) || isnan(x2) || isinf(x2) || ~isnumeric(xi) || isnan(xi) || isinf(xi)
    error('myinterpolate called with non-numeric argument')
end
if ~isreal(y1) || ~isreal(x1) || ~isreal(y2) || ~isreal(x2) || ~isreal(xi)
    error('myinterpolate called with non-real argument')
end
yi = y1+(y2-y1)*((xi-x1)/(x2-x1));
end

