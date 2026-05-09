#!/usr/bin/perl -w
#usage: perl *.pl <csv> <eff> <output> <r/c> <path>
$pwd=$ARGV[4];
print "$pwd";
if(-e $ARGV[2]){`rm $ARGV[2]`;}
#open(FO,$ARGV[0]);     #input.nac
#$des=`head -1 $ARGV[0] |perl -pe 's/,/\n/g' |wc -l`;
#print $des;
`echo \@relation sirna_efficacy >>$ARGV[2]`;
`echo >>$ARGV[2]`;
#`for i in \\{1\.\.$des\\}\\;do echo \@attribute FP\$i REAL\\;done >>$ARGV[2]`;
#system("for i in {1..$des};do echo \@attribute FP\$i REAL;done >>$ARGV[2]");
$fps=`head -1 $ARGV[0]`;chomp $fps;
#print $fps;
@fp=split(',',$fps);
for($i=0;$i<@fp;$i++){
        `echo \@attribute $fp[$i] numeric >>$ARGV[2]`;
}
#$classes=`sort -u $ARGV[1] |perl -pe 's/\n/,/g' |perl -pe 's/,\$//g' >$pwd/classes`;chomp $classes;
`sort -u $ARGV[1] |perl -pe 's/\n/,/g' |perl -pe 's/,\$//g' >$pwd/classes`;chomp $classes;
`chmod 777 $pwd/classes`;
if($ARGV[3] eq 'c'){
        `echo \@attribute class { >> $ARGV[2]`;
        `echo +1,-1} >>$ARGV[2]`;
	#  `echo } >> $ARGV[2]`;
        `perl -pi -e 's/{\n/{/g' $ARGV[2]`;
}

if($ARGV[3] eq 'r'){`echo \@attribute class numeric >> $ARGV[2]`;}
#else{die("Please mention which mode (regression or classification)\n");} #this line is buggy
`echo >> $ARGV[2]`;
`echo \@data >> $ARGV[2]`;
`tail -n+2 $ARGV[0] >$pwd/CSV`;
`chmod 777 $pwd/CSV`;
system("paste -d \",\" $pwd/CSV $ARGV[1] >> $ARGV[2]");
#`rm CSV classes`;

