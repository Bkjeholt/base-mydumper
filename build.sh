#!/bin/sh

ROOT_PATH_SUPPORT_FILES=~/Docker/SupportFiles
ROOT_PATH_DROPBOX_SUPPORT_FILES=${ROOT_PATH_SUPPORT_FILES}/dropbox/v2.1
ROOT_PATH_DOCKER_SUPPORT_FILES=${ROOT_PATH_SUPPORT_FILES}/docker/v2.2
DROPBOX_SUPPORT_FILES=Docker/SupportFiles
DROPBOX_PACKAGE_PATH=Docker/base-images/base-mysql-mydumper
DOCKER_HUB_USER=bkjeholt
DOCKERFILE_ROOT_PATH=Dockerfile


# If applicable, download the latest and greatest files from Dropbox

${ROOT_PATH_DROPBOX_SUPPORT_FILES}/download-package.sh \
                    ${DROPBOX_PACKAGE_PATH}
${ROOT_PATH_DROPBOX_SUPPORT_FILES}/download-support.sh \
                    ${DROPBOX_SUPPORT_FILES} \
                    ${ROOT_PATH_SUPPORT_FILES}

# Start the build

${ROOT_PATH_DOCKER_SUPPORT_FILES}/build.sh \
                    ${DOCKERFILE_ROOT_PATH} \
                    ${DOCKER_HUB_USER}

