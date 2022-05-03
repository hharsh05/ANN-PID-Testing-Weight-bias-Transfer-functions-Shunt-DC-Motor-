x = readtable('shunt_inputs.xlsx');
t = readtable('shunt_ki.xlsx');
[x,t] = simplefit_dataset
net = fitnet(10);
view(net)
net = train(net,x,t);
y = net(x);
perf = mae(net,y,t)
net = fitnet(10,'trainbr');
net = train(net,x,t);
n = -5:0.1:5;
a = tansig(n);
net.layers{1}.transferFcn = 'tansig';
y = net(x);
perf = mae(net,y,t)
y = sim(net,x)
gensim(net,-1)