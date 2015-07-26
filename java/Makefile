NAMESPACE=docker4j
REPOSITORY=java

all: oracle-8-jdk oracle-8-jre

oracle-8-jdk: oracle-8u51-jdk
	docker tag -f $(NAMESPACE)/$(REPOSITORY):$< $(NAMESPACE)/$(REPOSITORY):$@
	
oracle-8-jre: oracle-8u51-jre
	docker tag -f $(NAMESPACE)/$(REPOSITORY):$< $(NAMESPACE)/$(REPOSITORY):$@
	
oracle-8u51-jdk: oracle/8u51/jdk/Dockerfile
	docker build -t $(NAMESPACE)/$(REPOSITORY):$@ -f $< $(dir $<)

oracle-8u51-jre: oracle/8u51/jre/Dockerfile
	docker build -t $(NAMESPACE)/$(REPOSITORY):$@ -f $< $(dir $<)

.PHONY: all oracle-8-jdk oracle-8-jre oracle-8u51-jdk oracle-8u51-jre
