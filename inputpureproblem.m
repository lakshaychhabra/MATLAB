%{ Firstly I wrote given Values }%
XF =zeros(1,12);
YF = zeros(1,12);
time = 0;
VF=0;

time = input('Please Enter the total time range : ');


XB = [80 90 99 108 116 125 133 141 151 160 169 179 180];
YB = [0 -2 -5 -9 -15 -18 -23 -29 -28 -25 -21 -20 -17];
fprintf('\n Please enter the bomber plane cordinates');
for j = 0:time
    fprintf('Enter value for XB coordinate at %d time : ',j);
    XB(j+1) = input('');
     fprintf('Enter value for YB coordinate at %d time : ',j);
     YB(j+1) = input('');
end

fprintf('\n Enter the coordinate of YF and XF at time 0 \n');
YF(1) = input('Enter YF');
XF(1) = input('Enter XF');
fprintf('\n Enter the Velocity \n');
distance = zeros(1,12);
clc;

flag = 0;
time = 0;
for i = 1:time
    distance(i) = sqrt((YB(i)-YF(i))^2 + (XB(i)-XF(i))^2);
   sin = (YB(i)-YF(i))/distance(i);
   cos = (XB(i)-XF(i))/distance(i);
   YF(i+1)= YF(i)+ (VF*sin);
   XF(i+1)= XF(i)+ (VF*cos);
   
    if distance(i)<=10
        flag = 1;
        time = i;
         break;
    end
end

if flag ==1
    fprintf('The target will be hit at time %d \n',time);
else
    fprintf('No it gonna escape');
end
