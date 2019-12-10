FROM jupyter/pyspark-notebook:7a0c7325e470

RUN pip install sparkmonitor
RUN jupyter nbextension install sparkmonitor --py --user --symlink 
RUN jupyter nbextension enable sparkmonitor --py --user            
RUN jupyter serverextension enable --py --user sparkmonitor
RUN ipython profile create && echo "c.InteractiveShellApp.extensions.append('sparkmonitor.kernelextension')" >>  $(ipython profile locate default)/ipython_kernel_config.py
