FROM alpine:3.5
RUN apk add --update python py-pip
COPY req.txt /src/req.txt
RUN pip install -r /src/req.txt
COPY app.py /src
COPY buzz /src/buzz
CMD python /src/app.py