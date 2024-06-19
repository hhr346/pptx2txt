#!/bin/bash
# A bash script that can transform all pptx in a folder into txt
# 指定要遍历的路径
# 如果传入参数就按传入的参数，否则按照默认当前目录or默认自己设定的
path="your_directory"
# path=$1
# path=`pwd`

output="output"
echo "$path"

# 遍历指定路径下的所有文件
for file in "$path"/*.pptx
do
  echo $file
  # 检查文件是否存在且为普通文件
  if [ -f "$file" ]; then
    echo -e "\n111_$file""_111" >> "$path"/"$output".txt
    ./pptx2txt.sh "$file" >> "$path"/"$output".txt
    echo -e "222_$file""_222\n" >> "$path"/"$output".txt
  fi
done
