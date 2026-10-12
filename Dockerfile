FROM nginx
RUN apt-get update -y
RUN apt-get install git -y
RUN git clone https://github.com/kiran-sehgal/edumentor.git
RUN rm -rvf /usr/share/nginx/html/*
RUN cp -rvf edumentor/* /usr/share/nginx/html/
RUN rm -rvf edumentor
RUN apt remove git -y
