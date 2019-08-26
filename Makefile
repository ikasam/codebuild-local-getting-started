CODEBUILD_REPO  := aws-codebuild-docker-images
CODEBUILD_IMAGE := aws/codebuild/standard
TAG             := 2.0

.PHONY: codebuild
codebuild: codebuild-image $(CODEBUILD_REPO)
	./$(CODEBUILD_REPO)/local_builds/codebuild_build.sh -i $(CODEBUILD_IMAGE):$(TAG) \
	-e ./codebuild.local.env -s . -a ./artifacts

$(CODEBUILD_REPO):
	@git clone https://github.com/aws/aws-codebuild-docker-images.git

.PHONY: codebuild-image
codebuild-image: $(CODEBUILD_REPO)
	@if ! (docker images | grep $(CODEBUILD_IMAGE) > /dev/null); then \
		docker build -t $(CODEBUILD_IMAGE):$(TAG) ./$(CODEBUILD_REPO)/ubuntu/standard/$(TAG)/; fi