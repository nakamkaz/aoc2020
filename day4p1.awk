## usage gawk -f day4p1.awk inputfile
BEGIN{
	i=0
	k=""
	invalids=0
}
function fieldcheck(str){
}
$0~/^$/{
	i++
	}
$0!~/^$/{
	split($0, af, " ")
	for (f in af) {
		split (af[f],gh,":")
		aa[i][gh[1]]=gh[2]
	}
}

END {
		print "idx,\tkey,\tarr[idx][key]"
	for (y in aa) {
		ckd=0
		cidf=0
		for (k in aa[y] ){
			if (k=="byr") {
				ckd++
			} else if (k=="iyr") {
				ckd++
			} else if (k=="eyr") {
				ckd++
			} else if (k=="hgt") {
				ckd++
			} else if (k=="hcl") {
				ckd++
			} else if (k=="ecl") {
				ckd++
			} else if (k=="pid") {
				ckd++
			} else if (k=="cid") {
				cidf=1
			}
			 print y,", \t",k,",\t", aa[y][k]
		if (ckd==7) {
			valids++
			}
		}
	}
	print "Valids:",valids
}

