BEGIN{
	valids=0
}
{
an=split($1,arr,"-")
minc=arr[1]
mostc=arr[2]
s = substr($2,0,1)
pstr=$3

#print("min: ", minc)
#print("most:", mostc)
#print("s:", s)
#print("pstr:", pstr)

pos1c = substr(pstr,minc,1)
pos2c = substr(pstr,mostc,1)
if ((s==pos1c)&&(s!=pos2c)){
	valids++
	}

}
END {	
print valids
	}

