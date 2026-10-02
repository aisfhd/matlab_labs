function [result] = farenh2cels(faren)
%converts celsius to farenheit
%   you give it celsius, it gives back farenheit, thats it
arguments (Input)
    faren
end

arguments (Output)
    result
end

result = 5*(faren - 32)/9;
end