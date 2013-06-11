set :application, "awkin"
set :repository,  "https://github.com/mkoldobsky/qrin.git"

set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :ssh_options, {:forward_agent => true}
set :use_sudo, false
set :deploy_to, "/var/www/html"
set :user, "ec2-user"
set :keep_releases, 3
#ssh_options[:keys] = ["/home/user/Projects/cubedrkey.pem"] 
ssh_options[:keys] = "~/.ssh/cubedrkey.pem"

role :web, "54.235.107.7"                          # Your HTTP server, Apache/etc
role :app, "54.235.107.7"                          # This may be the same as your `Web` server
#role :db,  "http://ec2-50-17-156-247.compute-1.amazonaws.com/", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

