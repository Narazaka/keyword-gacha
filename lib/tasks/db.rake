namespace :db do
  task :migrate do
    raise "`rake db:migrate` is deleted! Use `rake db:migrate:apply` or `rake db:migrate:dry_run`"
  end

  namespace :migrate do
    desc "Apply database schema"
    task :apply do
      Rake::Task["db:migrate:perform"].invoke
    end

    desc "Apply database schema (dry-run)"
    task :dry_run do
      ENV["DRY_RUN"] = "1"
      Rake::Task["db:migrate:perform"].invoke
    end

    task :perform do
      dry_run = ENV["DRY_RUN"]

      config_file = Rails.root.join("config/database.yml").to_s
      schema_file = Rails.root.join("db/Schemafile").to_s

      options = [
        "--apply",
        "--config", config_file,
        "--file", schema_file,
        "--env", Rails.env,
        "--mysql-change-table-options"
      ]
      options << "--dry-run" if dry_run

      sh "ridgepole", *options

      unless dry_run
        # dry runじゃない(本実行の時)のみ実行する
        Rake::Task["db:schema:dump"].invoke
        Rake::Task["annotate_models"].invoke if defined?(Annotate)
      end
    end
  end
end
