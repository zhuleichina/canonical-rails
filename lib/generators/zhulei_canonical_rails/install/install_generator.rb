module ZhuleiCanonicalRails
  class InstallGenerator < Rails::Generators::Base

    def self.source_paths
      paths = []
      paths << File.expand_path('../templates', "../../#{__FILE__}")
      paths << File.expand_path('../templates', "../#{__FILE__}")
      paths << File.expand_path('../templates', __FILE__)
      paths.flatten
    end

    def add_files
      template 'zhulei_canonical_rails.rb', 'config/initializers/zhulei_canonical_rails.rb'
    end

  end
end
