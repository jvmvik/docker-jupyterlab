# Run tensorflow
#  - golang 1.8.1 
#  - tensorflow 1.1.0 
#

image=arm/jupyterlab

all: start

build:
	docker build -t $(image) .
	
start:
	docker run --rm -it --volume=`pwd`/work:/work -p 8888:8888 -p 8080:8080 $(image) --allow-root
