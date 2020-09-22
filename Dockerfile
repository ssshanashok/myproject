FROM tomcat


RUN $JAVA_HOME/bin/keytool -genkey -keyalg RSA \
 -alias tomcat \
 -dname "CN=test, OU=test, O=test, L=test, S=test, C=test" \
 -keystore /root/keystore \
 -storepass tomcat@123 \
 -keypass tomcat@123

RUN mkdir -p /usr/local/tomcat/conf/key
RUN cp /root/keystore /usr/local/tomcat/conf/key

