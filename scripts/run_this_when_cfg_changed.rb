#!/usr/bin/env ruby

require 'yaml'
require 'json'

fn_in = ARGV[0]
data_read = File.read(fn_in)
y = YAML.load(data_read)
y['tm']['comment'] = "This file is autogenerated. Look at #{fn_in} instead";
json_str = JSON.pretty_generate(y)
puts json_str
