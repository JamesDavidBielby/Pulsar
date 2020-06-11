net = perceptron;
net.trainParam.epochs=10;
net.divideFcn = 'dividerand';
[net,tr]= train(net,x,t);
y = net(x);

[m,n] = size(x);
count = 0; %overall dataset

for i=1:n
    if y(i)<0.5
        y(i)=0;
    end
    if y(i)>=0.5
        y(i)=1;
    end
    if t(i)==y(i)
        count=count+1;
    end
    
   
end


disp('Number of Correct Units: ');
disp(count);
disp('Number of Incorrect Units: ');
disp(n- count);
count=count*100;
count=count/n;
disp('% Correct Classification:');
disp(count); 

[m,n] = size(tr.time);

timelength =tr.time(n);



timeavg = timelength/n;
disp('Time: ');
disp(timelength);
disp('Avg Time: ');
disp(timeavg);
