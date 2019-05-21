#Build

docker build https://github.com/gmoulard/pypy.git -t chw

#Start

docker run -it chw python ./hw.py
