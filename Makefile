
GOPATH := $(shell go env GOPATH)

add-license-headers:
	go install github.com/google/addlicense@v1.1.1
	find . \( -name '*.yml' -o -name '*.yaml' \) -print0 | xargs -0 $(GOPATH)/bin/addlicense -v -c 'Bitshift D.O.O' -y 2025 -l mpl -s=only

check-license-headers:
	go install github.com/google/addlicense@v1.1.1
	find . \( -name '*.yml' -o -name '*.yaml' \) -print0 | xargs -0 $(GOPATH)/bin/addlicense -v -check
