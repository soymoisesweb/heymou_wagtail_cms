import multiprocessing

# Gunicorn configuration file
wsgi_app = 'mysite.wsgi:application'
bind = '0.0.0.0:8000'
workers = multiprocessing.cpu_count() * 2 + 1
worker_class = 'sync'
worker_connections = 1000
timeout = 30
keepalive = 2

# Logging
accesslog = '-'
errorlog = '-'
loglevel = 'info'

# Process naming
proc_name = 'wagtail_gunicorn'

# SSL (uncomment if using SSL)
# keyfile = '/etc/ssl/private/your-ssl.key'
# certfile = '/etc/ssl/certs/your-ssl.crt'
