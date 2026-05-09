args <- commandArgs(TRUE)
mat<- read.table(args[1],header=F)
rmat=round(mat, digits =3)
write.table(rmat,args[2])
