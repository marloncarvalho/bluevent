require 'grape'

module API

  module V1

    module Tasker

      class Task < Grape::API

        resources :tasks do



        end

      end

    end

  end

end