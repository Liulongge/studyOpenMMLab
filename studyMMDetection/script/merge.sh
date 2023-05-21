
source ./common.sh

for(( i=0;i<${#array[@]};i++)) do
    #${#array[@]}获取数组长度用于循环
    echo ${array[i]};
    cat ${array[i]}_* > "${array[i]}" # ~50M
    rm -rf cat ${array[i]}_*
    done;
