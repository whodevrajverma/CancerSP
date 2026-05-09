args <- commandArgs(TRUE)
mat=read.table(args[1],header=F)
matt=mat+1
mattt=log2(matt)
write.table(mattt,args[2])
