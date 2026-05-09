#!/usr/bin/perl -w
open(FO1,$ARGV[0]);	#mean
open(FO2,$ARGV[1]);	#sd
open(FO3,$ARGV[2]);	#user
#open(FW,$ARGV[3]);	#output
@mean=<FO1>; @sd=<FO2>; @user=<FO3>;
foreach(@user){
	chomp $_;
	@sub=split(',',$_);
	for($i=0;$i<@sub;$i++){#print $#sub;
		chomp $sub[$i];chomp $mean[$i]; chomp $sd[$i];
		#print "$sub[$i]\t$mean[$i]\t$sd[$i]\t$#sub\n";
		if($sd[$i]!=0){$diff=($sub[$i]-$mean[$i])/$sd[$i];	#main formula
			if($i!=$#sub){printf "%.3f,",$diff;}
			else{printf "%.3f",$diff;}
		}
		else{
			if($i!=$#sub){print "0.000";}
			else{ print "0.000";}
		}
	}
	print "\n";
}

