
source ./common.sh

for(( i=0;i<${#array[@]};i++)) do
    #${#array[@]}获取数组长度用于循环
    echo ${array[i]};
    split -b 50000000 "${array[i]}" "${array[i]}_" # ~50M
    rm -rf "${array[i]}"
    done;