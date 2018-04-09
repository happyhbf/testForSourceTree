#for v in a aa bb xx; do
#	echo "var is: ${v}"
#done

:<<'COMMENT'
a="aaa"
b="bbb"
echo $a $b
echo ${#a}

string="runoob is a great site"
echo ${string:5:8} # 输出 unoo

string="runoob is a great company"
echo `expr index "$string" is`  # 输出 8

array_name=(value0 value1 value2 value3)
valuen=${array_name[n]}


echo "param1 is: $1"
echo ${array_name[@]}

var=`expr 2 + 2`
echo "result is: $var"



file="/Users/bufuhuang/Documents/Test/Shell/test.sh"
if [ -w $file ]
then
echo "file exist: ${file}"
fi



a=5
b=6
result=$[a+b]



echo '按下 退出'
echo -n '输入你最喜欢的网站名: '
while read FILM
do
    echo "是的！$FILM 是一个好网站"
done



funWithReturn()
{
	echo "this is a function add.."
	echo "input first number:"
	read aNum
	echo "input another number:"
	read anotherNum
	echo "result is $aNum + $anotherNum"
	return $(($aNum+$anotherNum))
}

funWithReturn
echo ".......result $? !"




echo "${BASH_SOURCE[0]}"
echo "${BASH_SOURCE}"
echo "$( dirname "${BASH_SOURCE[0]}" )"
DIR="$( cd "$( dirname ${BASH_SOURCE[0]} )" )"
echo $DIR
$DIR

COMMENT

#! /bin/bash

    for file in `ls $1`
    do
        if [ -d $1"/"$file ]
        then
            read_dir $1"/"$file
        else
            echo $1"/"$file
        fi
    done















