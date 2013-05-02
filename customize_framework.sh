#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#

APKTOOL=$PORT_ROOT/tools/apktool
 
if [ $2 = "out/framework" ];then
	echo "delete framework redundance files"
	rm -rf "out/framework/smali/com/"

	echo "make framework-ext.jar"
	$APKTOOL d "../miui/XHDPI/system/framework/framework2.jar" "out/framework2"
	mkdir -p "out/ZIP/system/framework"
	cp -r "framework-ext.jar.out" "out/framework-ext.jar.out" 
	cp -r "out/framework2/smali/miui" "out/framework-ext.jar.out/smali"
	cp -r "out/framework2/smali/com/miui" "out/framework-ext.jar.out/smali/com"
	rm -rf "out/framework-ext.jar.out/smali/miui/telephony"

	for file in `find "$1/smali/com/" -name "*.smali"`
	do
        	newfile=${file/$1/"out/framework-ext.jar.out"}
        	if [ ! -f "$newfile" ]
        	then
        	        mkdir -p `dirname $newfile`
        	        echo "add widget smali from miui: $file"
        	        cp $file $newfile
       		fi
	done
	$APKTOOL b  "out/framework-ext.jar.out" "out/framework-ext.jar"
	cp "out/framework-ext.jar" "out/ZIP/system/framework/framework-ext.jar"
fi
