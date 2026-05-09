#FILE1=$1
#/gpsr/local/bin/perl -pe 's/\n/,/g' |perl -pe 's/$,//g' 38_genes_list  >genes
echo "list of 38 genes for input: \n"
cat 38_genes 
echo "\n"
echo "Format for input file should be following: \n"
cat input_format
