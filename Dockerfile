# Use an official Python runtime as a parent image
FROM python:3.9

COPY . /app

# Set the working directory
WORKDIR /app

RUN pip install -r requirements_d.txt

# Expose the Jupyter port
EXPOSE 8888

# Start Jupyter Notebook
CMD ["bash"]
# jupyter notebook --ip=0.0.0.0 v--port=8888 --no-browser --NotebookApp.token='token' --NotebookApp.password='' --allow-root"

#CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--NotebookApp.token='token'", "--NotebookApp.password=''", "--allow-root"]
