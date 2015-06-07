function Draw(d)
global VAR BLACK WHITE
switch d 
        case 1
            A = imread('pic/Black.jpg');
            x = BLACK(VAR(1),1);
            y = BLACK(VAR(1),2);
            image([x-0.5 x+0.5],[y-0.5 y+0.5],A);
            hold on;
        case 2
            A = imread('pic/White.jpg');
            x = WHITE(VAR(2),1);
            y = WHITE(VAR(2),2);
            image([x-0.5 x+0.5],[y-0.5 y+0.5],A);
            hold on;
end
end