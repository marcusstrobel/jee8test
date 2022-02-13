FROM airhacks/glassfish
COPY ./target/jee8test.war ${DEPLOYMENT_DIR}
