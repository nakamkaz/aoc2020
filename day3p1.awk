BEGIN{
	i=1
	encnts=0
	interval=0
}
{
	aa[i++]=$1;
	interval=length($0)
}
END {	
print "inverval", interval	

posx=1
posy=1
	for (;posy<=i;posy++ ) {
		printf ("%s ",aa[posy] )
		if (posx%interval ==0) {
			pt = substr(aa[posy],interval,1)
		} else {
			pt = substr(aa[posy],posx%interval,1)
		}
			print "x:",posx,"y: ",posy, "v: ",pt 
		if (index(pt,"#")>=1) {
			encnts++
		}
		posx=posx+3
	}
print "enc", encnts;
}

