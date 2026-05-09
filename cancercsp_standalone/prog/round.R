args <- commandArgs(TRUE)
mydata = read.csv(args[1],header=F)
tr=round(mydata,2)
write.csv(tr,args[2])
