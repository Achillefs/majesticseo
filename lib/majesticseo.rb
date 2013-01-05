$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

=begin rdoc
  This module implements a ruby-friendly interface to the Majestic SEO developer API.
=end
require "nokogiri"
require "open-uri"
require "ostruct"

unless Hash.method_defined?(:to_param)
  require "active_support/core_ext/object/to_query"
end

unless String.method_defined?(:underscore)
  require "active_support/core_ext/string/inflections"
end

module Majesticseo
  VERSION = '1.0.2'
  class NoMethodError < ArgumentError; end
  class InvalidAPIKey < ArgumentError; end
=begin rdoc
  Very simple ostruct-based data struct
=end
  class Structure < OpenStruct
    def [] key
      send(key.underscore)
    end
  end
  
=begin rdoc
  Structure respresenting one data row. Can be accessed either as a Ruby object, or as an array.
  Object methods are underscored versions of the actual array element keys.
  =Example
    maj = Majesticseo::Client.new(:app_api_key => "APPKEYHASH")
    maj.get_subscription_info
    puts maj.data_tables.first.rows.first["IndexItemInfoResUnits"]
    => 99992
    puts maj.data_tables.first.rows.first.index_item_info_res_units
    => 99992
=end
  class Row < Majesticseo::Structure; end

=begin rdoc
  Structure respresenting a response global vers element. Can be accessed either as a Ruby object, or as an array.
  Object methods are underscored versions of the actual array element keys.
  =Example
    maj = Majesticseo::Client.new(:app_api_key => "APPKEYHASH")
    maj.get_subscription_info
    puts maj.global_vars["MaxBulkBacklinksCheck"]
    => 120
    puts maj.global_vars.max_bulk_backlinks_check
    => 120
=end
  class GlobalVars < Majesticseo::Structure; end
end
%W[data_table client].each { |r| require "#{File.dirname(__FILE__)}/majesticseo/#{r}" }
