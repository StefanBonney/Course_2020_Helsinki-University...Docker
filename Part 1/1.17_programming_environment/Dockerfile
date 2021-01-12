# Start from python 3.8 image as this provides some of the setup already made
FROM python:3.8

# Create a seperate directory as root folder and app folder so that there is some seperation
# normal python file gets run from mydir, webapp get run from /app
WORKDIR /mydir
RUN mkdir app

# If there are any files that want to be contained in the app folder at build time,
# they are copied here. F.ex. if user for some reason does not want to run with volume bind.
COPY . /mydir
COPY ./app /mydir/app
RUN mv requirements.txt app

# Install pip and essential libraries
RUN apt-get update -y && apt-get install -y python-pip python-dev build-essential

# Install Flask from requirements.txt
RUN ls /mydir/app
#RUN cd app
RUN ls
RUN pip install -r /mydir/app/requirements.txt

EXPOSE 5000

RUN chmod +x shell-file.sh

# Open the shell file, from here we can chose to work on a regular python app or a flask app
CMD ["/mydir/shell-file.sh"]

# doker build -t pydevenv .
# docker run -it -v "$(pwd)/app:/mydir/app" -v "$(pwd):/mydir" -p 5000:5000 pydevenv

