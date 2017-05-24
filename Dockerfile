FROM bower:latest
ENV HTTP_PORT 8000
COPY . /app  
WORKDIR /app
RUN bower install
RUN cp js/analytics.sample.js js/analytics.js
EXPOSE 8000
CMD ["python","-m","SimpleHTTPServer","8000"] 
