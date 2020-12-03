BEGIN{
	i=1
	interval=0
}
{
	aa[i++]=$1;
	interval=length($0)
}

function treeencount(mvx,mvy) {
encnts=0
posx=1
posy=1
        for (;posy<i;posy=posy+mvy ) {
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
                posx=posx+mvx
        }
	return encnts
}
END {	
prod = 1
print "enc r1d1", k1=treeencount(1,1)
print "enc r3d1", k2=treeencount(3,1)
print "enc r5d1", k3=treeencount(5,1)
print "enc r3d1", k4=treeencount(7,1)
print "enc r3d1", k5=treeencount(1,2)
print "prod ", k1*k2*k3*k4*k5
}

