function Judge(j)
global VAR BLACK WHITE;
chess = zeros(100,2);
line1 = zeros(100,2);
line2 = zeros(100,2);
line3 = zeros(100,2);
line4 = zeros(100,2);
count = [1 1 1 1];
lengh = 1;
win = 1;
switch j
    case 1
        a = BLACK(VAR(1),1);
        b = BLACK(VAR(1),2);
        chess = BLACK;
    case 2
        a = WHITE(VAR(2),1);
        b = WHITE(VAR(2),2);
        chess = WHITE;
end

for i = 1:100;
    if chess(i,2) == b
        line(1,count(1),:) = chess(i,:)
        count(1) = count(1) + 1;
    end
    if chess(i,1) == a
        line(2,count(2),:) = chess(i,:);
        count(2) = count(2) + 1;        
    end
    if chess(i,2) == b - chess(i,1)
        line(3,count3,:) = chess(i,:);
        count(3) = count(3) + 1;
    end
    if chess(i,2) == b + chess(i,1)
        line(4,count4,:) = chess(i,1);
        count(4) = count(4) + 1;
    end
end

%check the line y = b
while 1
    for j = 1:count(1)
        if line(j,1) == 1
            win = win + 1;
            lengh = lengh + 1;
            break;
        end
    end
    if lengh == 5
        break;
    end
end
if win < 5
    lengh = 1;
    while 1
        for j = 1:count(1)
            if a - line(j,1) == lengh
                win = win + 1;
                lengh = lengh + 1 ;
                break;
            end
        end
        if win == 5
            break;
        end
    end
end
if win == 5
else
    win = 1;
    lengh = 1;
end   
%check the line x = a

%check the line y = -x + b

%check the line y = x + b


end