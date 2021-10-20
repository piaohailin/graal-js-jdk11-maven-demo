
export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-21.2.0\ 2/Contents/Home
export export PATH=$PATH:$JAVA_HOME/bin:.
java -version

#mvn package

#运行预热java代码比二进制代码效率提高30毫秒
#java -cp ./target/classes com.mycompany.app.App

jar cfvm App.jar manifest.txt -C target/classes .
jar tf App.jar
java -jar App.jar

#运行本地编译程序启动无感
native-image --language:js -jar App.jar

#mvn exec:exec
#mvn exec:exec@nograal
