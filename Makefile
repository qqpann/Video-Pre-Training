IMAGE_NAME = vpt

.PHONY: image
image:
	docker build -t $(IMAGE_NAME) .

.PHONY: run
run:
	docker run -it --rm \
	$(IMAGE_NAME)

.PHONY: run-sh
run-sh:
	docker run -it --rm \
	$(IMAGE_NAME) /bin/bash