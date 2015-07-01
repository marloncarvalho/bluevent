require 'model/list'

module Model

  module Tasker

    # It's the unit the user work upon.
    # An user can create, edit, delete, set it as done.
    class Task
      include DataMapper::Resource

      property :id, Serial
      property :name, Text
      property :done, Boolean
      property :notes, Text
      property :due_date, DateTime

      belongs_to :list, 'Model::Tasker::List'
      has n, :subtasks, 'Model::Tasker::Task'

      def completion
      end

    end

  end

end