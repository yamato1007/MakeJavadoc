#!/bin/sh

#javadocを作成するディレクトリ
DIRNAME=documents
#.javaファイルの一覧が書かれたファイルの名前
JAVAFILESNAME=javaFiles.txt
#.javaファイルの格納されているディレクトリ
SRCDIR=src

#javadocのディレクトリの削除と作成
rm -rf "${DIRNAME}"
mkdir $DIRNAME

#javaファイル一覧のファイル作成
find $SRCDIR -name '*.java' -print > $DIRNAME/$JAVAFILESNAME

#javadocの作成
javadoc -d $DIRNAME @$DIRNAME/$JAVAFILESNAME
