# increases the amount of traffic an nginx server can handle

# increases the ULIMIT of teh default file
exec { 'fix--for-nginx':
  # modify te ULIMIT value
  command => '/bin/sed -i "s/15/4096/" /etc/default/nginx',
  # specify the path for sed command
  path    => 'usr/local/bin/:/bin/',
}

# Restart Nginx
exec { 'nginx-restart':
  # Restart Nginx service
  command => '/etc/init.d/nginx restart',
  path    => '/etc/init.d/*,
}
