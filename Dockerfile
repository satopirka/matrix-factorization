FROM continuumio/miniconda3
RUN apt install -y build-essential git wget
RUN conda install -y -c conda-forge openmp
RUN apt install -y libopenblas-base
RUN apt install -y libopenblas-dev
RUN apt install -y libatlas-base-dev
RUN cd ~ && wget https://raw.githubusercontent.com/satopirka/cymf/master/requirements.txt && pip install -r requirements.txt
RUN cd ~ && git clone https://github.com/satopirka/cymf