FROM rutgerhofste/docker_python_envs:stable
MAINTAINER Rutger Hofste <rutgerhofste@gmail.com>

# ##########################  Command Line ####################################
# Google-cloud-sdk (https://cloud.google.com/sdk/docs/quickstart-debian-ubuntu)
RUN export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" && \
    echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
	apt-get update -y && apt-get install google-cloud-sdk -y

