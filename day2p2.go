package main

import (
        "bufio"
        "fmt"
        "log"
        "os"
        "strconv"
        "strings"
)

func StrsliceFromStdin() []string {
        var dat []string = nil
        nscan := bufio.NewScanner(os.Stdin)
        for nscan.Scan() {
                dat = append(dat, nscan.Text())
        }
        return dat
}

func ToFieldsStrslice(ss []string) {
        // Field sample
        //       1-3 b: abcdef
        //       | | |l      |
        //     min | |       |
        //      most |       |
        //        char       |
        //             passstr
        var valids int
        var min, most int
        var char, passstr string
        for _, str := range ss {
                la := strings.Split(str, " ")
                minmost := strings.Split(la[0], "-")
                min, _ = strconv.Atoi(minmost[0])
                most, _ = strconv.Atoi(minmost[1])
                char = strings.Trim(la[1], ":")
                passstr = la[2]
                log.Printf ("min %v most %v char %v pass %v\n",min, most, char, passstr)
                if ( strings.Contains(char,passstr[min-1:min])  && !strings.Contains(char,passstr[most-1:most]) ) ||
                (!strings.Contains(char,passstr[min-1:min]) && strings.Contains(char,passstr[most-1:most])  )  {
                valids++
                }
        }
        fmt.Println(valids)
}

func main() {
        ssitem := StrsliceFromStdin()
        ToFieldsStrslice(ssitem)
}
