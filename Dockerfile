#FROM continuumio/anaconda3:5.3.0
FROM continuumio/anaconda3:2020.02

RUN apt update && apt upgrade -y && apt install -y build-essential

RUN conda install jupyter keras -y --quiet

RUN mkdir /opt/notebooks

ENV KERAS_BACKEND=tensorflow

WORKDIR /opt/notebooks

CMD /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root
