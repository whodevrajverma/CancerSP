#FILE1=$1
grep -v "#" input_64.csv| /gpsr/local/bin/perl -pe 's/,/\t/g' >mydata
/gpsr/local/bin/dos2unix -k mydata
/gpsr/local/bin/perl ./prog/hashmatch.pl ./extra_files/64_selGenes mydata 1 1 |cut -f1 -d# >mydata11
cut -f1  mydata11 >genes
cut -f2- mydata11  >express
#/gpsr/local/bin/Rscript ./prog/one.R express express_log
/gpsr/software/R-2.7.0/bin/Rscript ./prog/one.R express express_log
tail -n+2 express_log |cut -d " " -f2- | /gpsr/local/bin/perl -pe 's/ /,/g'>express_log_final
sh ./prog/tpose.sh express_log_final>tpose_log_final
/gpsr/local/bin/perl ./prog/mean_sd.pl ./extra_files/mean_64 ./extra_files/sd_64 tpose_log_final >tpose_log_normalize
/gpsr/local/bin/perl ./prog/col2svm.pl -i tpose_log_normalize -o out -s 0
/gpsr/local/bin/svm_classify out ./models/model_64 out_svm
#/gpsr/local/Rscript round1.R out_svm out_svm1
/gpsr/software/R-2.7.0/bin/Rscript ./prog/round1.R out_svm out_svm1
cut -f2 -d' ' out_svm1|tail -n+2  >  out1
/gpsr/local/bin/perl ./prog/perl4_v2.pl out1 0.5 out2
/gpsr/local/bin/perl ./prog/perl4_v2.pl out1 0.5 Final_result
echo "done_all_steps"
