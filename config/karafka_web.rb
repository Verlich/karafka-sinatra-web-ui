#\ -p 4244
# encoding: utf-8

require_relative '../karafka.rb'

workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['MAX_THREADS'] || 5)
threads threads_count, threads_count

port ENV['PORT'] || 4244
environment ENV['RACK_ENV'] || 'development'