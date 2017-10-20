require 'data_mapper'
require_relative './app.rb'

namespace :db do
  task :migrate do
    DataMapper.auto_migrate!
    puts "Auto-migrate complete (data was lost)"
  end

  task :updagrade do
    DataMapper.auto_upgrade!
    puts "Auto-upgrade complete (no data loss)"
  end

end

# $ rake db:upgrade RACK_ENV=test
# $ rake db:upgrade # Default RACK_ENV is development so we don't need to be explicit.

# $ heroku run rake db:auto_upgrade # Default RACK_ENV on heroku is 'production'