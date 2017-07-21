#Based on Tomcat images
FROM tomcat:8

#To generate charts, the Pentaho Reporting engine requires functions found in X11
RUN     apt-get update \
        && apt-get install -y xvfb \
        && apt-get clean all \
        && rm -rf /var/lib/apt/lists/*
        && rm -rf webapps
