require File.expand_path('../config/environment', __FILE__)

DataMapper::Logger.new($stdout, :debug)

if ['test', 'dev'].include? ENV['RACK_ENV']
  DataMapper.setup(:default, ENV['DATABASE_TEST_URL'])
  DataMapper.auto_migrate!
elsif ENV['RACK_ENV'].eql? 'prod'
  DataMapper.setup(:default, ENV['DATABASE_URL'] || ENV['CLEARDB_DATABASE_URL'])
  DataMapper.auto_upgrade!
end

DataMapper::finalize

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :put, :delete, :options, :patch]
  end
end

run API::Base