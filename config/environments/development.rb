Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true 
  # is a flag. If true then any error will cause detailed debugging information to be dumped in the HTTP response, and the Rails::Info controller will show the application runtime context in /rails/info/properties. true by default in development and test environments, and false in production mode. For finer-grained control, set this to false and implement local_request? in controllers to specify which requests should provide debugging information on errors.

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    # configures whether the application should perform the caching features provided by the Action Controller component or not. Set to false in development mode, true in production. If it's not specified, the default will be true.

    config.cache_store = :memory_store
    # configures which cache store to use for Rails caching. Options include one of the symbols :memory_store, :file_store, :mem_cache_store, :null_store, :redis_cache_store, or an object that implements the cache API. Defaults to :file_store.

    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options)
  config.active_storage.service = :local

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false
  
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true


  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
