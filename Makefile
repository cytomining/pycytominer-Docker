user = cellprofiler
org = cellprofiler
project = pycytominer
tag = latest
version = main

.DEFAULT_GOAL: build
build:
	docker build -t $(org)/$(project):$(tag) . --build-arg version=$(version)
	docker login -u $(user)
	docker push $(org)/$(project):$(tag)
	echo "Your new docker registry is ready at: $(org)/$(project):$(tag)"
