% Dmytro Polishchuk Ekfu-25/1
% 25.09.2026

%% 
C = {1; 'hello'; {1,2,3}; [1,2,3,4]}
lengths = cellfun(@length,C)

%% 
clear;
m = input('input m: ');
functype = input('input func(sin/cos): ', 's');
for i = 1:15
    x = m:0.1:m+4*pi;
    pause(0.5);
    switch functype
        case 'sin'
            y = sin(x);
        case 'cos'
            y = cos(x);
        otherwise
            disp('unknown function, try again: ')
            functype = input('input func(sin/cos): ');
            continue;
    end
    plot(x,y);
    m = m + pi/8;
end
%% P
sentence = input('Enter your sentence: ', 's');

clean = '';
count = 0;

for i = 1:length(sentence)
    if sentence(i) == ' ';
        count = count + 1;
    else
        clean = [clean, sentence(i)];
    end
end
disp(count);
disp(clean);