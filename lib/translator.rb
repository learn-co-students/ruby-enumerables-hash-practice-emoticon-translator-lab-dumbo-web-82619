# require modules here
require "yaml"
def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  puts emoticons
  new_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }

  emoticons.each do |key,value|
    new_hash['get_emoticon'][value[0]] = emoticons[key][1]
    new_hash['get_meaning'][value[1]] = key
  end
  puts new_hash
  new_hash
end

def get_japanese_emoticon(path, emoticons)
  # code goes here
  hash = load_library(path)
  if hash['get_emoticon'][emoticons]
    return hash['get_emoticon'][emoticons]
  end
  return "Sorry, that emoticon was not found"
  
  
end

def get_english_meaning(path, emoticons)
  # code goes here
  hash = load_library(path)
  if hash['get_meaning'][emoticons]
    return hash['get_meaning'][emoticons]
  end
  return "Sorry, that emoticon was not found"
end