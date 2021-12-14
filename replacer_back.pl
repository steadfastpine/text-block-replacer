#!/usr/bin/perl





open (MYFILE, 'in.txt');


while () {

	chomp;

	print "$_\n";
}









exit


perl -p -i -e 's/\n//g;' `find /wpages/$1/content/* -name '*.php'`

#perl -p -i -e 's/\n//g;' `find /wpages/$1/* -name '*.php'`

file_in=$(cat /development/replacer/in.txt|perl -p -i -e 's/\n//g;s/#/\\#/g;')

file_out=$(cat /development/replacer/out.txt|perl -p -i -e 's/\n//g;s/#/\\#/g')





file_in=$(python -c "import urllib, sys; print urllib.unquote(sys.argv[1])" "$file_in")

file_out=$(python -c "import urllib, sys; print urllib.unquote(sys.argv[1])" "$file_out")


#echo "$file_out"


#exit



perl -p -i -e "s#$file_in#$file_out#g" `find /wpages/$1/content/* -name '*.php'`
#perl -p -i -e "s#$file_in#$file_out#g" `find /wpages/$1/* -name '*.txt'`
#perl -p -i -e "s#$file_in#$file_out#g" `find /wpages/$1/* -name '*.php'`

wcomp -r -y -s $1

exit

#exit
#perl -p -i -e 's#<div class="footerright"></div></div></div>'.'</div></body></html>##g' `find /wpages/$1/* -name '*.html'`

#exit

#perl -p -i -e 's#"footerright">.*##g' `find /wpages/applyforaloan/* -name '*.html'`

#file_list=$(find /wpages/$1/* -name '*.html'|egrep -i "-"|egrep -iv "print|404"|perl -p -i -e "s#/wpages/$1/##g;s#/index.html##g;")


#echo "$file_list"

#for i in $file_list;do

#perl -p -i -e "s#article_slug#$i#g" /wpages/$1/$i/index.html


#done









#wcomp -r y -s $1
