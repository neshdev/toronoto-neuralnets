#PART 3 - Optimization

%lr = [0.002, 0.01, 0.05, 0.2, 1.0, 5.0, 20.0]
%m = [0, 0.9]
%
%all = struct()
%
%for i = 1:length(lr)
%  for j = 1:length(m)
%    wd_coefficient=0
%    n_hid=10
%    n_iters=70
%    learning_rate=lr(i)
%    momentum_multiplier=m(j)
%    do_early_stopping=false
%    mini_batch_size=4
%    [data_loss, data_labels] = a3(wd_coefficient, n_hid, n_iters, learning_rate, momentum_multiplier, do_early_stopping, mini_batch_size);
%    item = struct();
%    item.lr = lr(i);
%    item.m = m(j);
%    item.loss = data_loss;
%    all(i,j) = item;
%  endfor
%endfor


#PART 4 - Generalization (Q8)
wd = [0, 0.001, 0.01, 0.0001, 5, 1];

all = struct();

for i = 1:length(wd)
  wd_coefficient=wd(i)
  n_hid=200
  n_iters=1000
  learning_rate=0.35
  momentum_multiplier=0.9
  do_early_stopping=false
  mini_batch_size=100
  
  [data_loss, data_names, class_loss, class_perf] = a3(wd_coefficient, n_hid, n_iters, learning_rate, momentum_multiplier, do_early_stopping, mini_batch_size);
  item = struct();
  item.wd = wd(i)
  item.loss = data_loss;
  items.class_loss = class_loss
  all(i,1) = item;
endfor


for i=1:length(wd)
  all(i,1)
endfor