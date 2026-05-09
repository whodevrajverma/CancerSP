#!/usr/bin/perl -w
$file1 =$ARGV[0]; #input score 
$file2=$ARGV[1];  #thresh
$file3=$ARGV[2];  #output 

open(FR1,$file1);
open(FW,">".$file3);
$x=1;
while ($line=<FR1>){
	chomp $line;
        if ($line >= $file2){
                        print FW "Sample:$x\t$line\tEarly Stage";
			print FW "\n";

                        }
                                if ($line < $file2){
                                                print FW "Sample:$x\t$line\tLate Stage";
print FW "\n";
                                                }
		$x++;
                                                }
