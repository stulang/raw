FROM node:latest
ENV HTTP_PORT 8000
COPY . /app  
WORKDIR /app
RUN npm install -g bower 
RUN bower install --allow-root
RUN cp js/analytics.sample.js js/analytics.js
EXPOSE 8000
CMD ["python","-m","SimpleHTTPServer","8000"] 
