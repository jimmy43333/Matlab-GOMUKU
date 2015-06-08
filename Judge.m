function Judge(j)
global VAR BLACK WHITE;
chess = zeros(10,2);
line1 = zeros(10,2);
line2 = zeros(10,2);
line3 = zeros(10,2);
line4 = zeros(10,2);
count = [1 1 1 1];
lengh = 1;
win = 1;
no = 0;
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

for i = 1:10
    if chess(i,2) == b
        line1(count(1),:) = chess(i,:);
        count(1) = count(1) + 1;
    elseif chess(i,1) == a
        line2(count(2),:) = chess(i,:);
        count(2) = count(2) + 1;    
    elseif chess(i,2) + chess(i,1) == b + a
        line3(count(3),:) = chess(i,:);
        count(3) = count(3) + 1;
    elseif chess(i,2) - chess(i,1) == b-a
        line4(count(4),:) = chess(i,:);
        count(4) = count(4) + 1;
    end
end

%check the line y = b
while 1
    for j = 1:count(1)
        if  line1(j,1) - a == lengh
            win = win + 1;
            lengh = lengh + 1;
            break;
        else 
            no = no + 1;
        end        
    end
    if no == count(1)
        break;
    else
        no = 0;
    end    
end
lengh = 1;
if win < 5
    while 1
        for j = 1:count(1)
            if a - line1(j,1) == lengh
                win = win + 1;
                lengh = lengh + 1 ;
                break;
            else
                no = no + 1;
            end
        end
        if win == 5
            break;
        else
            if no == count(1)
                break;
            else
                no = 0;
            end
        end        
    end
end
if win == 5
    close(gcbf);
else
    win = 1;
    lengh = 1;
end

%check the line x = a
while 1
    for j = 1:count(2)
        if  line2(j,2) - b == lengh
            win = win + 1;
            lengh = lengh + 1;
            break;
        else 
            no = no + 1;
        end        
    end
    if no == count(2)
        break;
    else
        no = 0;
    end    
end
lengh = 1;
if win < 5
    while 1
        for j = 1:count(2)
            if b - line2(j,2) == lengh
                win = win + 1;
                lengh = lengh + 1 ;
                break;
            else
                no = no + 1;
            end
        end
        if win == 5
            break;
        else
            if no == count(2)
                break;
            else
                no = 0;
            end
        end        
    end
end
if win == 5
    close(gcbf);
else
    win = 1;
    lengh = 1;
end


%check y-b = -x+a
while 1
    for j = 1:count(3)
        if  line3(j,1) - a == lengh
            win = win + 1;
            lengh = lengh + 1;
            break;
        else 
            no = no + 1;
        end        
    end
    if no == count(3)
        break;
    else
        no = 0;
    end    
end
lengh = 1;
if win < 5
    while 1
        for j = 1:count(3)
            if a - line3(j,1) == lengh
                win = win + 1;
                lengh = lengh + 1 ;
                break;
            else
                no = no + 1;
            end
        end
        if win == 5
            break;
        else
            if no == count(3)
                break;
            else
                no = 0;
            end
        end        
    end
end
if win == 5
    close(gcbf);
else
    win = 1;
    lengh = 1;
end


%check y-b = x-a
while 1
    for j = 1:count(4)
        if  line4(j,1) - a == lengh
            win = win + 1;
            lengh = lengh + 1;
            break;
        else 
            no = no + 1;
        end        
    end
    if no == count(4)
        break;
    else
        no = 0;
    end    
end
lengh = 1;
if win < 5
    while 1
        for j = 1:count(4)
            if a - line4(j,1) == lengh
                win = win + 1;
                lengh = lengh + 1 ;
                break;
            else
                no = no + 1;
            end
        end
        if win == 5
            break;
        else
            if no == count(4)
                break;
            else
                no = 0;
            end
        end        
    end
end
if win == 5
    close(gcbf);
else
    win = 1;
    lengh = 1;
end

end