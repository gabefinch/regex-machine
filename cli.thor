#!/usr/bin/env/ruby
require 'thor'
require 'pry'

class Search < Thor
  desc "query REGEX", "test provided REGEX against dictionary"
  def query(regex)
    dict = File.readlines("./words.txt")
    pattern = Regexp.new(regex)
    dict.each do |li|
      puts li if (li =~ pattern)
    end
  end
end

Search.start(ARGV)
