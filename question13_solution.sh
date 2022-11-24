echo "What files, who's the publisher?"
echo "Assuming we provide the files (hello.txt and hello2.txt included)"
echo

cksuminput=0
md5input=0
sha1input=0
#we want to compare the values of hello.txt and hello2.txt against their expected values

echo "hello.txt"
cksuminput=$(cksum hello.txt)
md5input=$(md5sum hello.txt)
sha1input=$(sha1sum hello.txt)
checker=$((0))

#hello.txt expected
#cksum = 3912995378 19 hello.txt
#md5sum = ff78c799f2fd84a3cd181176c495dd70  hello.txt
#sha1sum = 35caea7496709dc37f7e7049b4eb417cb88705f7  hello.txt

if [ "$cksuminput" = "3912995378 19 hello.txt" ]
then
    echo "cksum ...success"
    checker=$((checker+1))
else
    echo "Recieved: $cksuminput"
    echo "Expected: 3912995378 19 hello.txt"
fi

if [ "$md5input" = "ff78c799f2fd84a3cd181176c495dd70  hello.txt" ]
then
    echo "md5sum ...success"
    checker=$((checker+1))
else
    echo "Recieved: $md5input"
    echo "Expected: ff78c799f2fd84a3cd181176c495dd70  hello.txt"
fi

if [ "$sha1input" = "35caea7496709dc37f7e7049b4eb417cb88705f7  hello.txt" ]
then
    echo "sha1sum ...success"
    checker=$((checker+1))
else
    echo "Recieved: %sha1input"
    echo "Expected: 35caea7496709dc37f7e7049b4eb417cb88705f7  hello.txt"
fi
echo

if [ $checker = 3 ]
then
    echo "hello.txt matches publisher version"    
else
    echo "hello.txt does not match publisher version"
fi


echo

echo "hello2.txt"
cksuminput=$(cksum hello2.txt)
md5input=$(md5sum hello2.txt)
sha1input=$(sha1sum hello2.txt)
checker=$((0))

#hello2.txt
#cksum = 1944339794 22 hello2.txt
#md5sum = 49418838c800759db30e6b1cc3b9bb46  hello2.txt
#sha1sum = 88f3ba4323454590212bd44e6fe86378d88ed2ed  hello2.txt

if [ "$cksuminput" = "1944339794 22 hello2.txt" ]
then
    echo "cksum ...success"
    checker=$((checker+1))
else
    echo "Recieved: $cksuminput"
    echo "Expected: 1944339794 22 hello2.txt"
fi

if [ "$md5input" = "49418838c800759db30e6b1cc3b9bb46  hello2.txt" ]
then
    echo "md5sum ...success"
    checker=$((checker+1))
else
    echo "Recieved: $md5input"
    echo "Expected: 88f3ba4323454590212bd44e6fe86378d88ed2ed  hello2.txt"
fi

if [ "$sha1input" = "88f3ba4323454590212bd44e6fe86378d88ed2ed  hello2.txt" ]
then
    echo "sha1sum ...success"
    checker=$((checker+1))
else
    echo "Recieved: $sha1input"
    echo "Expected: 88f3ba4323454590212bd44e6fe86378d88ed2ed  hello2.txt"
fi
echo

if [ $checker = 3 ]
then
    echo "hello2.txt matches publisher version"    
else
    echo "hello2.txt does not match publisher version"
fi
