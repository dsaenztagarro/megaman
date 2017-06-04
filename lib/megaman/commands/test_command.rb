module Megaman
  module Commands
    class TestCommand
      def initialize(options)
        @filename = options['filename'] || (raise ArgumentError)
      end

      def run
        project = Megaman::Projects::Project.for(@filename)
        test_file_path = project.test_file_path_for(@filename)
        `tmux send-keys -t #{project.name}:test "bers #{test_file_path}" C-m`
      end
    end
  end
end
