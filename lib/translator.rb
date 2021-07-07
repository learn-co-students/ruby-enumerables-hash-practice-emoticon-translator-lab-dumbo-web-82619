require "yaml"
require 'pry'

def load_library(library)
  emoticons = YAML.load_file(library)
  japanese_emoticon = {}
  english_emoticon = {}
  translations = {
  'get_meaning' => {},
  'get_emoticon' => {}
  }
  emoticons.each do |key, value|
    japanese_emoticon[value[1]] = key
    english_emoticon[value[0]] = value[1]
    translations['get_meaning'] = japanese_emoticon
    translations['get_emoticon'] = english_emoticon
  end
  translations
end

def get_japanese_emoticon(library, western_emoticon)
  emoticons = YAML.load_file(library)
  translate = load_library(library)
  if translate['get_emoticon'].key?(western_emoticon)
    translate['get_emoticon'].each do |key, value|
      if key == western_emoticon
          return value 
      end
    end
  elsif !translate['get_emoticon'].key?(western_emoticon)
  return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(library, j_emoticon)
  emoticons = YAML.load_file(library)
  translate = load_library(library)
  if translate['get_meaning'].key?(j_emoticon)
    translate['get_meaning'].each do |key, value|
      if key == j_emoticon
        return value
      end
    end
    elsif !translate['get_meaning'].key?(j_emoticon)
    return "Sorry, that emoticon was not found"
  end
end