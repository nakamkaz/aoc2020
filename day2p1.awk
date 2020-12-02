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

rpn = gsub(s,s,pstr)
if ((rpn >= minc ) && (rpn <= mostc )) {
	valids++
	}


}
END {	
print valids
	}

