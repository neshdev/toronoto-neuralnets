load data.mat
model = train(10);

#Q4
#init_wt = 0
# 372550 - N
# exp(0) / (exp(0) + exp(0) + ... + exp(0)) = 1/250

#Q5
#model = train(1);

#Model A - lr=0.001
#Final Training CE 4.567
#Final Validation CE 4.432
#Final Test CE 4.439

#Model B - lr=0.1
#Final Training CE 4.405
#Final Validation CE 4.394
#Final Test CE 4.402

#Model C - lr=10 ** winner **
#Final Training CE 3.686
#Final Validation CE 3.423
#Final Test CE 3.429

#Q6
#model = train(10);

#Model A - lr=0.001
#Final Training CE 4.380
#Final Validation CE 4.382

#Model B - lr=0.1 ** winner **
#Final Training CE 2.935
#Final Validation CE 2.929
#Final Test CE 2.927

#Model C - lr=10
#Finished Training.
#Final Training CE 3.348
#Final Validation CE 3.329
#Final Test CE 3.346

#Q7 + Q8
##Model A
#numhid1 = 5;
#numhid2 = 100;
#Final Training CE 2.806
#Final Validation CE 2.829
#Final Test CE 2.839

##Model B
#numhid1 = 50;
#numhid2 = 10;
#Final Training CE 3.000
#Final Validation CE 3.015
#Final Test CE 3.011

##Model C
#numhid1 = 50;
#numhid2 = 200;
#Final Training CE 2.535
#Final Validation CE 2.601
#Final Test CE 2.608

##Model D
#numhid1 = 100;
#numhid2 = 10;
#Final Training CE 3.235
#Final Validation CE 3.239
#Final Test CE 3.233

#Q9
##Model A = 0.0
#Final Training CE 3.992
#Final Validation CE 3.954

##Model B = 0.5
#Final Training CE 3.334
#Final Validation CE 3.259

##Model C = 0.9
#Final Training CE 2.717
#Final Validation CE 2.717

