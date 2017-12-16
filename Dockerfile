FROM elasticsearch:5.6.5

ADD target/releases/analysis-sudachi-1.0.0-SNAPSHOT.zip /
ADD sudachi/system_core.dic /usr/share/elasticsearch/config/sudachi_tokenizer/system_core.dic

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install file:///analysis-sudachi-1.0.0-SNAPSHOT.zip

EXPOSE 9200
ENV ES_HOME /etc/elasticsearch
