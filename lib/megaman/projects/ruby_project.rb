module Megaman
  module Projects
    class RubyProject
      attr_reader :name

      def initialize(name, dir)
        @name = name
        @dir = dir
      end

      def test_file_path_for(filename)
        relative_file_path = filename.dup.gsub(@dir, '')
        path = relative_file_path.split(File::SEPARATOR)
        path.shift
        filename = path.pop
        File.join(['spec', path, filename.sub('.rb', '_spec.rb')].flatten)
      end
    end
  end
end
