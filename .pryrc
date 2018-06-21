require 'awesome_print'
AwesomePrint.pry!

require 'logger'
ActiveRecord::Base.logger = Logger.new(STDOUT)
