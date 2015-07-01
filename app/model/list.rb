module Model

  module Tasker

    # Tasks can be categorized into lists.
    class List
      include DataMapper::Resource

      property :id, Serial
      property :name, Text

      belongs_to :parent, 'List'
      has n, :tasks, 'Model::Tasker::Task'
    end

  end

end