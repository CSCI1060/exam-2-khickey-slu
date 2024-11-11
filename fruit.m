% Kevin Hickey

function [] = fruit(N)
% This function prints for values from 1 to N:
% “apple” if the value is divisible by 2
% “banana” if the value is divisible by 5
% The number itself if neither is true
% “applebanana” if both are true
    for i = 1:N
        if rem(i, 2) == 0
            fprintf("apple")
        end

        if rem(i, 5) == 0
            fprintf("banana")
        end
        
        if rem(i, 2) ~= 0 && rem(i, 5) ~= 0
            fprintf("%d", i)
        end
        fprintf("\n")
    end
end