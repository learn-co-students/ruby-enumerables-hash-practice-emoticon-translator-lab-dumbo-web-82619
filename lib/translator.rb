# require modules here
require "yaml"
require "pry"

def load_library(filepath)
  library = {}
  emoticons = YAML.load_file(filepath)
  library = {get_meaning: {}, get_emoticon: {}}
  emoticons.each_pair do |key, value|
    #binding.pry
    library[:get_meaning][value[1]] = key
    library[:get_emoticon][value[0]] = value[1]
  end
  library
  #binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end