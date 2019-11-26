FROM jupyter/datascience-notebook
USER root
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt
RUN jupyter contrib nbextension install
RUN R -e "install.packages('FactoMineR', repos='http://cran.irsn.fr/')"
RUN R -e "install.packages('factoextra', repos='http://cran.irsn.fr/')"
RUN R -e "install.packages('ggplot2', repos='http://cran.irsn.fr/')"
RUN R -e "install.packages('corrplot', repos='http://cran.irsn.fr/')"
RUN R -e "install.packages('psych', repos='http://cran.irsn.fr/')"
RUN R -e "install.packages('CGPfunctions', repos='http://cran.irsn.fr/')"
RUN R -e "install.packages('lattice', repos='http://cran.irsn.fr/')"
RUN R -e "install.packages('cluster', repos='http://cran.irsn.fr/')"
RUN R -e "install.packages('NbClust', repos='http://cran.irsn.fr/')"
RUN R -e "install.packages('visreg', repos='http://cran.irsn.fr/')"
RUN R -e "install.packages('car', repos='http://cran.irsn.fr/')"
RUN R -e "install.packages('coefplot', repos='http://cran.irsn.fr/')"