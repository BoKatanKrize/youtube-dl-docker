FROM ubuntu:18.04

WORKDIR /mydir

RUN apt-get update && apt-get install -y curl python
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
RUN chmod a+x /usr/local/bin/youtube-dl

ENV LC_ALL=C.UTF-8

# Use ENTRYPOINT to define the main executable
ENTRYPOINT ["/usr/local/bin/youtube-dl"]

# CMD is used to give default arguments to the entrypoint
CMD ["https://imgur.com/gallery/xwJgflf"]
# The argument defined by CMD can be overridden by giving one in the CLI

# Build : docker build -t youtube-dl .
# Run (no arguments) : docker run youtube-dl
# Run (argument) : docker run youtube-dl https://imgur.com/gallery/iT3U4K4    

