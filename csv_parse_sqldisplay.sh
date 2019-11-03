#!/bin/bash

cat $1 | LANG=C awk -F, '
{
    column_max_length[NF]
    # NF=列数
    # NR=行数
    data[0][NF]

    for (col_num=1; col_num<=NF; col_num++) {
        data[NR][col_num] = $col_num
    }

    if (NR == 1) {
        for (i=1; i<=NF; i++) {
            column_max_length[i] = 0;
        }
    }

    for(i=1; i<=NF; i++) {
        if (length($i) >= column_max_length[i]) {
            column_max_length[i] = length($i)
        }
    }
}
function separator() {
    printf("%s","+")
    for (m in column_max_length) {
        for (j=0; j<column_max_length[m]+2; j++) {
            printf("%s","-")
        }
        printf("%s","+")
    }
    print("")
}
END {
    for (row=1; row<=NR; row++) {
        if (row == 1 || row == 2) {
            separator()
        }
        for (col=1; col<=NF; col++) {
            printf("|")
            space_num = column_max_length[col]-length(data[row][col])
            for (x=0; x<space_num; x++) {
                printf("%s"," ")
            }
            printf(" %s ", data[row][col])
        }
        print("|")
    }
    separator()
}
'
