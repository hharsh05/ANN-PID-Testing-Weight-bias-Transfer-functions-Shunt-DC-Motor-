x = readtable('shunt_inputs.xlsx');
t = readtable('shunt_outputs.xlsx');
[x,t] = simplefit_dataset
net = fitnet(10);
view(net)
net = train(net,x,t);
y = net(x);
perf = mae(net,y,t)
net = fitnet(10,'trainbr');
net.layers{1}.transferFcn = 'purelin';

net = train(net,x,t);
n = -5:0.1:5;
a = purelin(n);
y1 = net(x);
perf = mae(net,y,t)
