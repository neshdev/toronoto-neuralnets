function [ret, cache] = affine_forward(x,w)
   cache = struct('W', [], 'X', []); 
   cache.W = w;
   cache.X = x;
   ret = 0 #todo
end

function [dx, dw] = affine_backward(dout, cache)
   w = cache.W;
   x = cache.X;
   dx = 0 #todo
   dw = 0 #todo
end

function [ret, cache] = sigmoid_forward(x)
   ret = 0 #todo
   cache = struct('sigmoid', []);
   cache.sigmoid = ret;
end

function dx = sigmoid_backward(dout,cache)
   sigmoid = cache.sigmoid;
   dsigmoid = #todo
   dx = #todo
end

#easier to see the softmax here rahter than the professors code
function sm = softmax_custom(x)
   x = x - max(x,[],1); # sum along the rows, dimensions are (D x N) D - number of inputs N is the number of samples
   x = exp(x);
   sm = x./sum(x,1);
end

function [loss, grad] = cross_entropy_loss(x,y)
   #use the softmax_custom and make sure to scale the loss
   #The loss is given by the professor
   loss = #todo
   grad = #todo
end

function ret = d_loss_by_d_model(model, data, wd_coefficient)

  [a1_out, a1_cache] = affine_forward(data.inputs,model.input_to_hid);
  [z1_out, z1_cache] = sigmoid_forward(a1_out);
  [a2_out, a2_cache] = affine_forward(z1_out, model.hid_to_class);
  
  [loss, dout] = cross_entropy_loss(a2_out, data.targets);
  loss = loss + # add regularization scalar for R(W2)
  loss = loss + # add regularization scalar for R(W1)
  
  [dz1, dW2] = affine_backward(dout, a2_cache);
  da1 = sigmoid_backward(dz1, z1_cache);
  [_, dW1] = affine_backward(da1, a1_cache);

  dW2 = dW2 + # add regularization matrix for dR(W2)/dW2
  dW1 = dW1 + # add regularization matrix for dR(W1)/dW1
  
  ret.input_to_hid = dW1;
  ret.hid_to_class = dW2;
end