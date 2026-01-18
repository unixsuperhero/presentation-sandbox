#!/usr/bin/env ruby

module Project
  def self.load(hiiro)
    hiiro.log "Plugin loaded: #{name}"

    hiiro.load_plugin(Tmux)
    attach_methods(hiiro)
  end

  def self.attach_methods(hiiro)
    hiiro.instance_eval do
      def project_dirs
        Dir.glob(File.join(Dir.home, 'proj', '*/')).map { |path|
          [File.basename(path), path]
        }.to_h
      end

      def projects_from_config
        projects_file = File.join(Dir.home, '.config/hiiro', 'projects.yml')

        return {} unless File.exist?(projects_file)

        YAML.safe_load_file(projects_file)
      end
    end
  end
end
