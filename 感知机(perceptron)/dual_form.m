x = [3, 3; 4, 3; 1, 1]';
y = [1, 1, -1];
G = x' * x;
a = [0, 0, 0];
b = 0;
temp = -1;
while(temp ~= 0)
    temp = 0;
    for i = 1:3
        sum = 0;
        for j = 1:3
           sum = sum + a(j) * y(j) * G(i,j);
        end
        if(y(i) * (sum + b) <= 0)
            temp = temp + 1;
            a(i) = a(i) + 1;
            b = b + y(i);        
        end
    end
end
a
b