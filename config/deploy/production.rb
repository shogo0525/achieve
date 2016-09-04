server '52.198.38.128', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/shogo_inamoto/.ssh/id_rsa'