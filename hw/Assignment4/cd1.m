function ret = cd1(rbm_w, visible_data)
% <rbm_w> is a matrix of size <number of hidden units> by <number of visible units>
% <visible_data> is a (possibly but not necessarily binary) matrix of size <number of visible units> by <number of data cases>
% The returned value is the gradient approximation produced by CD-1. It's of the same shape as <rbm_w>.

    visible_data = sample_bernoulli(visible_data);

    w = rbm_w;
    v = visible_data;
    probabilities = visible_state_to_hidden_probabilities(w,v);
    h = sample_bernoulli(probabilities);
    pos_grad = configuration_goodness_gradient(v, h);
    
    reconstruction_probability = hidden_state_to_visible_probabilities(w,h);
    v_prime = sample_bernoulli(reconstruction_probability);
    probabilities = visible_state_to_hidden_probabilities(w,v_prime);
    #h_prime = sample_bernoulli(probabilities);
    neg_grad = configuration_goodness_gradient(v_prime,probabilities);
    
    ret = pos_grad - neg_grad;
end
