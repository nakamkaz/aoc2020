BEGIN{
	i=0;
	pair1=0;
	pair2=0;
	}
{
	arr[i]=$1;
	i++;
	}
END{
	for (x in arr) {
		for (y in arr) {
			flag = arr[x]+arr[y]
			if (flag==2020) {
				print("pair ",arr[x]," and ",arr[y])
				print("prod: ",arr[x]*arr[y])
				exit(0)
			      }
			}
		}	
	
	}

