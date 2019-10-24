# docker-robotframework-seleniumlibrary
Minimal image for running selenium client code using Robot Framework language binding (see https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html). See https://hub.docker.com/r/timopih/robotframework-seleniumlibrary. 

Needs to have a selenium hub and a browser node in the same docker network / kubernetes cluster. Expects the robot framework test code to be in the directory '/tests'. The result files go by default to '/out', but can be overridden using '--outputdir '. Entrypoint is 'robot'.
