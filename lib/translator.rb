# require modules here
require 'yaml'

def load_library(file_path)
  # code goes here
  emo_lib = YAML.load_file(file_path)
  
  outcome = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
end

def get_japanese_emoticon
  # code goes here
  
end

def get_english_meaning
  # code goes here
  
end