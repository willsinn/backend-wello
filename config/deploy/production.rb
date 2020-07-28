server '52.90.139.2', user: 'deploy', roles: %w{web app db}
set :rails_env, 'production'