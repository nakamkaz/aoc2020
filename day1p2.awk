BEGIN{
	i=0;
	}
{
	arr[i]=$1;
	i++;
	}
END{
	for (x in arr) {
		for (y in arr) {
			for (z in arr) {
				flag = arr[x]+arr[y]+arr[z]
				if (flag==2020) {
					print("pair ",arr[x]," and ",arr[y]," ",arr[z])
					print("prod: ",arr[x]*arr[y]*arr[z])
					exit(0)
			      	}
			}
		}
	}	
}
