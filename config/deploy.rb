require 'bundler/capistrano'

load 'deploy/assets'

server '188.93.19.195', :app, :web, :db, primary: true
set :deploy_to, '/var/www/art-povar.ru/public_html'
set :user, 'root'
set :use_sudo, false
ssh_options[:forward_agent] = true

set :deploy_via, :remote_cache
set :repository,  "https://github.com/100lp/artpovar.git"
set :scm, :git

set :normalize_asset_timestamps, false
set :shared_children, shared_children + %w[public/uploads]

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

before 'deploy:assets:precompile', 'deploy:symlink_db'

namespace :deploy do
  desc "Symlinks the database.yml"
  task :symlink_db, :roles => :app do
    run "ln -nfs #{deploy_to}/shared/config/database.yml #{release_path}/config/database.yml"
  end
end