#!/usr/local/bin/ruby

#javadocのディレクトリ
dirname = "documents"
#.javaファイルの一覧のファイルの名前
javaFilesName = "javaFiles.txt"
#.javaファイルの場所
srcDir = "src"

#JavaDocディレクトリの削除と作成
system("rm -rf " << dirname)
system("mkdir " << dirname)

#javaFilesの生成
system("find " << srcDir << " -name *.java -print > " << dirname << "/" << javaFilesName)

#javaDocの生成
system("javadoc -d " << dirname << " @" << javaFilesName)
