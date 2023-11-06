FROM liquibase/liquibase:latest

# for podman, run as 'root'
USER root
RUN apt-get update && apt-get install -y unzip openjdk-11-jdk

ADD bashrc.add /root 
ADD docker-entrypoint.sh /liquibase
RUN cat /root/bashrc.add >> /root/.bashrc

RUN cd /tmp \
	&& mkdir databricks-driver \
	&& wget --no-verbose -O databricks-driver.zip https://databricks-bi-artifacts.s3.us-east-2.amazonaws.com/simbaspark-drivers/jdbc/2.6.34/DatabricksJDBC42-2.6.34.1058.zip \
	&& unzip databricks-driver.zip -d databricks-driver \
	&& find databricks-driver -maxdepth 2 -type f -name "*.jar" | xargs -d "\n" -I "{}"  mv {} /liquibase/lib \
	&& wget --no-verbose -O liquibase-databricks.jar https://github.com/liquibase/liquibase-databricks/releases/download/v1.0.1/liquibase-databricks-1.0.1.jar \
	&& mv liquibase-databricks.jar /liquibase/lib \
	&& rm -fr databricks-driver

