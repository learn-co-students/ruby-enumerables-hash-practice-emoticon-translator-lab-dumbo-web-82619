# require modules here


def load_library(file_path)
  require "yaml"
  
  # file = File.read(file_path)
  # emoticons = YAML.load(file)
  
  emoticons = YAML.load_file(file_path)
  
  hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  
  emoticons.each{
    |meaning, emoji|
    hash[:get_meaning][emoji[1]] = meaning
    hash[:get_emoticon][emoji[0]] = emoji[1]
  }
  return hash
end

def get_japanese_emoticon(file_path, emoticon)
  jap_hash = load_library(file_path)
  
  jap_emoji = jap_hash[:get_emoticon][emoticon]
  
  if jap_emoji == nil
    return "Sorry, that emoticon was not found"
  end
  
  return jap_emoji
  
end

def get_english_meaning(file_path, emoticon)
  english_hash = load_library(file_path)
  
  english_meaning = english_hash[:get_meaning][emoticon]
  
  if english_meaning == nil
    return "Sorry, that emoticon was not found"
  end
  
  return english_meaning
end