lock '3.4.0'


set :application, 'nodecodeship'
set :repo_url, 'git@github.com:kenshero/nodecodeship.git'
set :deploy_to, '/home/codeship/codeshipnode'
set :ssh_options, { :forward_agent => true }
set :deploy_via, :copy
# set :linked_files, %w{config/database.yml}
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

namespace :deploy do

  desc 'Restart application'
  # task :restart do
  #   on roles(:app), in: :sequence, wait: 5 do
  #     execute :touch, release_path.join('tmp/restart.txt')
  #   end
  # end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end