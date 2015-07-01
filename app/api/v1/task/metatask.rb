require 'grape'

module API

  module V1

    module Tasker

      class MetaTask < Grape::API

        resources :metatasks do

          desc 'List of MetaTasks.'
          get do
            present Model::Task::MetaTask.all
          end

          desc 'Create a new MetaTask.'
          post do
            metatask = Model::Task::MetaTask.new :name => params[:name]
            metatask.save
            present metatask
          end

        end

      end

    end

  end

end