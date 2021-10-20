
export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-21.2.0\ 2/Contents/Home
export export PATH=$PATH:$JAVA_HOME/bin:.
java -version

mvn package
mvn exec:exec
#mvn exec:exec@nograal
