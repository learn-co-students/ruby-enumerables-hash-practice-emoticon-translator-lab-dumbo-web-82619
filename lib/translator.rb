# require modules here
require "yaml"
def load_library(file_name)
  hash = {:get_meaning => {}, :get_emoticon => {}}
  emoticons = YAML.load_file(file_name)
  emoticons.each do |meaning, emoji|
    hash[:get_meaning][emoji[1]] = meaning
    hash[:get_emoticon][emoji[0]] = emoji[1]
  end
  hash
end

def get_japanese_emoticon(file_name, emoticon)
  result = load_library(file_name)[:get_emoticon][emoticon]
  if result == nil
    return "Sorry, that emoticon was not found"
  else
    return result
  end
  
end

def get_english_meaning(file_name, emoticon)
   result = load_library(file_name)[:get_meaning][emoticon]
  if result == nil
    return "Sorry, that emoticon was not found"
  else
    return result
  end
end