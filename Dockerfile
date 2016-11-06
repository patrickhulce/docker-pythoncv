FROM ubuntu:latest

ENV model_dir /var/lib/tensorflow

RUN apt-get update --fix-missing
RUN apt-get -y install wget python-pip python-dev
RUN apt-get -y install python-opencv python-numpy python-matplotlib
RUN apt-get -y install libcairo2-dev libjpeg8-dev libpango1.0-dev libgif-dev
RUN pip install --upgrade Pillow https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.11.0rc1-cp27-none-linux_x86_64.whl

RUN mkdir -p ${model_dir}
RUN wget http://download.tensorflow.org/models/image/imagenet/inception-2015-12-05.tgz -P ${model_dir}
RUN cd ${model_dir} && tar -xzf inception-2015-12-05.tgz

ADD test.py /tmp/test.py
