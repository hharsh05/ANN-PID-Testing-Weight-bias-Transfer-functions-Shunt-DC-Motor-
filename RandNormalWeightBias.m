x = readtable('shunt_inputs.xlsx');
t = readtable('shunt_kp.xlsx');
[x,t] = simplefit_dataset
net = train(net,x,t);
y = net(x);
perf = mae(net,y,t)
net = train(net,x,t);
layer = reluLayer
y = net(x);
perf = mae(net,y,t)
net = setwb(net,randn(1,0));
net.IW{1,1}
net.b{1}
net.trainParam.lr = 0.05
y = net(x);
y = sim(net,x)
gensim(net,-1)
