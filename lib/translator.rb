# require modules here
require "yaml"
require "pry"

def load_library(filepath)
  emoticons = YAML.load_file('emoticons.yml')
  emoticons
  binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end