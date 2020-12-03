package main

import (
        "bufio"
        "fmt"
        "log"
        "os"
        "strconv"
)

func StrsliceFromStdin() []string {
        var dat []string = nil
        nscan := bufio.NewScanner(os.Stdin)
        for nscan.Scan() {
                dat = append(dat, nscan.Text())
        }
        return dat
}

func ToIntsliceFromStrslice( ss []string ) []int {
        var dat []int = nil
        for _, str := range ss {
                v, err := strconv.Atoi(str)
                dat = append(dat, v)
                if err != nil {
                        log.Fatal(err)
                }
        }
        return dat
}
func main() {
        ssitem := StrsliceFromStdin()
        isitem := ToIntsliceFromStrslice(ssitem)
        for _,i := range isitem {
                for _,j := range isitem {
                        if i+j == 2020 {
                                fmt.Println(i*j)
                                break
                        }
                }
        }
}
