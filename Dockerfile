# you need to build your own tensorflow-local Docker image, or use something like tensorflow/tensorflow here
FROM tensorflow-local

RUN apt-get update \
  && apt-get install -qq -y --no-install-recommends \
    libasound-dev \
    portaudio19-dev \
    libportaudio2 \
    libportaudiocpp0 \
    ffmpeg \
    libav-tools \
    wget \
    git

WORKDIR /tacotron

COPY requirements.txt ./
RUN pip install -r requirements.txt
