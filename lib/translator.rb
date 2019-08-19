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

def get_japanese_emoticon (filepath, emoticon)
  # code goes here
  library = load_library(filepath)
  if  library[:get_emoticon][emoticon]
    library[:get_emoticon][emoticon]
  else p "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(filepath, emoticon)
  library = load_library(filepath)
  if library[:get_meaning][emoticon]
    library[:get_meaning][emoticon]
  else
    p "Sorry, that emoticon was not found"
  end
end