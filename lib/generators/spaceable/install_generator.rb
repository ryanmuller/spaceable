require 'rails/generators'
require 'rails/generators/migration'

module Spaceable
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration
    source_root File.expand_path("../templates", __FILE__)

    # all public methods in here will be run in order
    #def add_my_initializer
    #  template "initializer.rb", "config/initializers/spaceable_initializer.rb"
    #end
    #

    def self.orm
      Rails::Generators.options[:rails][:orm]
    end

    def self.next_migration_number(path)
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    end

    def self.orm_has_migration?
      [:active_record].include? orm
    end

    def create_migration_file
      if self.class.orm_has_migration?
        migration_template 'migration.rb', 'db/migrate/spaceable_migration'
      end
    end

  end
end 

