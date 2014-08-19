module MethodTodo
  class TaskManager
    attr_accessor :storage

    def initialize
      self.storage = File.open(storage_file_location, 'a+')
    end

    def add_task(description, requester: nil, **options)
      storage << "#{description}"
      storage << " (for #{requester})" if requester
      storage << " [#{Time.now}]"
      storage << "\n"
    end

    def cleanup
      storage.close
    end

    private

    def storage_file_location
      File.join(ENV["HOME"], 'tasks')
    end
  end
end
