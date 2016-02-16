FROM tbfisher/drupal-nginx:php-5.6.x

ADD entrypoint.sh /entrypoint.sh

# Configure files directory.
RUN mkdir -p /var/www_files/private && \
    chown -R www-data:www-data /var/www_files

# Change www-data uid to be the same as Host user uid.
ENTRYPOINT ["/entrypoint.sh"]
# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]
