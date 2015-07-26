NAMESPACE=docker4j

all: base base-glibc java

base:
	docker build -t $(NAMESPACE)/$@ -f $@/Dockerfile $@

base-glibc: base
	docker build -t $(NAMESPACE)/$@ -f $@/Dockerfile $@

java: base-glibc
	make -C $@

.PHONY: all base base-glibc java
