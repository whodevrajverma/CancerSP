library(MASS);
args <- commandArgs(TRUE);
mat<- read.csv(args[1], sep="\t",header=F);
matt=(mat+1);
log_mat=log2(matt)
write.matrix(log_mat,args[2]);
