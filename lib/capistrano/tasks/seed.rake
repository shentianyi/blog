namespace :deploy do
  desc 'db:seed'
  task :seed => [:set_rails_env] do
    run "cd #{current_path}; bundle exec rake db:seed RAILS_ENV=#{rails_env}"
  end
end