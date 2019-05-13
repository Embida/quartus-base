FROM ubuntu:16.04

RUN apt -qq update \
    && apt -y upgrade \
    && apt install -y build-essential repo libglib2.0-0 libpng12-0 libfreetype6 libsm6 libxrender1 libfontconfig1 libxext6 python-dev python-pip \
    libatk1.0-0 libcairo2 libgl1-mesa-glx libglu1-mesa libgtk2.0-0 libxi6 libxt6  libxtst6 \
    && rm -rf /var/lib/apt/lists/*

RUN  dpkg --add-architecture i386 \
    && apt -qq update \
    && apt install -y libc6:i386 libfontconfig1:i386 libfreetype6:i386 libgl1-mesa-glx:i386 libice6:i386 libncurses5:i386 libsm6:i386 \
    libusb-0.1-4:i386 libxcursor1:i386 libxft2:i386 libxmu6:i386 libxrandr2:i386 libxrender1:i386 libstdc++6 lib32stdc++6 \
    libwebkitgtk-3.0-0 \
    && rm -rf /var/lib/apt/lists/*
