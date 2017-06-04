module Megaman
  module Projects
    class Project
      def self.for(filename)
        project_regex = %r{/Users/(.)*\/Code\/(?<lang>\w+)\/(?<project_name>\w+)\/(?<relative_path>(.)*)}
        match = project_regex.match(filename)
        if match
          dir = filename.dup.gsub(match['relative_path'], '')
          project_klass = Kernel.const_get "Megaman::Projects::RubyProject"
          project_klass.new(match['project_name'], dir)
        end
      end
    end
  end
end
