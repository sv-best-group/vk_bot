FROM volodg/swift3:preview2.1

ENV APP_NAME=VkBot

WORKDIR /$APP_NAME/

#Fetch packages
ADD ./Package.swift /$APP_NAME/
ADD ./Sources /$APP_NAME/Sources

RUN swift package fetch \
    && swift build

#TODO --configuration release
#or -Xswiftc -O but mongo incorrectly works under debug mode (
