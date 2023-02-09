workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['MAX_THREADS'] || 5)
threads threads_count, threads_count

preload_app!

rackup Puma::Configuration::DEFAULTS[:rackup]
port ENV['PORT'] || 4243
environment ENV['RACK_ENV'] || 'development'