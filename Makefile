NAMESPACE=docker4j

all: base java

base:
	docker build -t $(NAMESPACE)/$@ -f $@/Dockerfile $@

java: base
	make -C $@

.PHONY: all base java
