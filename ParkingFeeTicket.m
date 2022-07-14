function [cost] = ParkingFeeTicket(hour)
cost = 0;
% Set total parking fee to zero by default

if hour < 0
% Check if the ticket is lost
    cost = cost + 36;
    % Increment total parking fee by extra lost ticket charge
    hour = abs(hour); % Set hour to positive value
end

hour = ceil(hour);
% Round number of hours up

day = floor(hour / 24);
% Number of days parked (excluding today) (Round down)

hour = rem(hour,24);
% Assign number of remained hours to hour

cost = cost + day * 24;
% Increment parking fee by daily maximum per day parked

% Conditionals below check how many remained hour parked and
% increment total parking fee by corresponding values
if hour == 0
    cost = cost;
elseif hour <= 2
    cost = cost + 4;
elseif hour <= 4
    cost = cost + 7;
elseif hour <= 21
    cost = cost + hour + 3;
else
    cost = cost + 24;
end