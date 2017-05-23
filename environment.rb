require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require 'sinatra/flash'

set :database, "sqlite3:app.sqlite3"

require './app'
require './models'
