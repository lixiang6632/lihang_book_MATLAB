w = [0, 0];
b = 0;
x = [3, 3; 4, 3; 1, 1]';
y = [1, 1, -1];
temp = -1;
while(temp ~= 0)
    temp = 0;
    for i = 1:3
        if(y(i) * (w * x(:, i) + b) <= 0)
            temp = temp + 1;
            w = w + y(i) * x(:, i)';
            b = b + y(i);        
        end
    end
end
w
b
