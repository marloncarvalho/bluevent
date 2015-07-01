# encoding: UTF-8

require 'api/v1/task/metatask'
require 'api/v1/task/task'

module API

  module V1

    class Base < Grape::API
      version 'v1', :using => :header, :vendor => 'alienlabz', :format => :json
      format :json

      mount API::V1::Tasker::Task => '/'
      mount API::V1::Tasker::MetaTask => '/'
    end

  end

end
