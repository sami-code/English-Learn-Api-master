# frozen_string_literal: true

module DictionaryReader
  require 'open-uri'
  DICTIONARY = open(ENV['dictionary_link']).read.split("\n")
end
