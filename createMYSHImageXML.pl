#!/usr/local/bin/perl
 
 #perl doesn't have boolean types
 use constant false => 0;
 use constant true => 1;
 my $output_file = "outoutXML.txt";
 
 my $num = 1;
 
 
 while ($num < 43) {
 	
# 		print "<photo>" ;
 #		print "\n\t";
 # 		print "<title>Olu</title>" ;
 #		print "\n\t";
 #		print "<file>vbko_$num.png</file>";
 #		print "\n\t";
 #		print "<thumb>thumbs/vbko_";
 #		print "$num" ;
 #		print "_thumb.png</thumb>";
 #		print "\n";
 #		print "</photo>";+
 #		print "\n";
  		
  		print "<image title=\"Karl\" ";      
  		print "\n\t";
  		print "thumbnailImage=\"../vbko_pics/thumbs/vbko_";
  		print $num;
  		print "_thumb.png\" ";
  		print "\n\t";
  		print "fullImage=\"../vbko_pics/vbko_";
  		print $num;
  		print ".png\" />";
  		print "\n";
  		
  		
  		$num++;
 }
 END {
 	close (DATA); 
 	close (OUTFILE);
 }
#  <image title="Flex"
 #       thumbnailImage="assets/fx_appicon-tn.gif"
  #      fullImage="assets/fx_appicon.jpg" />
 
 
 


 print