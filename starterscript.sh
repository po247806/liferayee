timedatectl set-timezone Asia/Jakarta
chmod -R 777 /opt /usr
rm -rf /opt/tomcat-8.0.32/temp
rm -rf /opt/tomcat-8.0.32/temp
echo export JAVA_HOME=/opt/jdk > /usr/bin/liferay
echo export PATH=$PATH:$JAVA_HOME/bin >> /usr/bin/liferay
echo /opt/tomcat-8.0.32/bin/catalina.sh run >> /usr/bin/liferay
