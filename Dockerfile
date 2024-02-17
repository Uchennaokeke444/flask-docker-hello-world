# using official python runtime as a perent image
FROM python:3.6

# set the working directory to /app
WORKDIR /app

# copy the content
COPY . /app

# install all needed package
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# make port 5000 available to the internet
EXPOSE 5000
# define environment variable
ENV NAME World
ENTRYPOINT ["python"]

# run app.py when the container launches
CMD ["python", "app.py"]
