require 'model/list'

module Model

  module Tasker

    # A MetaTask can be instantiated and converted into a Task.
    # An user performs tasks but never metatasks.
    # It works like templates.
    class MetaTask
      include DataMapper::Resource

      property :id, Serial
      property :name, Text

      belongs_to :list, 'Model::Tasker::List'
      has n, :subtasks, 'MetaTask'
    end

  end

end