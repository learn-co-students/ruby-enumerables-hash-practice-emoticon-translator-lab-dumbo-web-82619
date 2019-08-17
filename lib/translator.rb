# require modules here
require "yaml"
require "pry"

def load_library(filepath)
  library = {}
  emoticons = YAML.load_file(filepath)
  library = {get_meaning: emoticons.keys, get_emoticon: emoticons.values}
  library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end