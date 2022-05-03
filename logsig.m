x = [4,5,6]
t = [1,2,3]
[x,t] = simplefit_dataset;
net = feedforwardnet(10);
net1.layers{1}.transferFcn='logsig';
net = train(net,x,t)
gensim(net)
