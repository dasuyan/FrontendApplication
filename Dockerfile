FROM nginx:1.10

ADD vhost.conf /etc/nginx/conf.d/default.conf

COPY ./dist /var/www

# Run the script to start server
CMD [ "npm", "run", "start" ]
