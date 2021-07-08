# require modules here
require "pry"
require "yaml"

def load_library(file_path)
  hash = {:get_emoticon=>{}, :get_meaning=>{}}
  results = YAML.load_file(file_path)
    results.each do |string, emos|
      #binding.pry
#write in to our hash a new key valued pair of the string and the emoticon
    hash[:get_emoticon][emos[0]] = emos[1]
    hash[:get_meaning][emos[1]] = string
    end
  hash
 #Write a method, load_library, that loads the emoticons.yml file.
end

def get_japanese_emoticon(path, e_emoticon)
  trans = load_library(path)
  if trans[:get_emoticon][e_emoticon]
    trans[:get_emoticon][e_emoticon]
  else 
  return "Sorry, that emoticon was not found"
end
 #Write a method, get_japanese_emoticon, that will take a traditional Western emoticon, like :) and translate it to its Japanese version. It will rely load_library to work. Refer to the table below for translations.
end

def get_english_meaning(path,string)
   trans = load_library(path)
  if trans[:get_meaning][string]
    trans[:get_meaning][string]
  else 
  return "Sorry, that emoticon was not found"
end
  #Write a method, get_english_meaning, that takes a Japanese emoticon and returns its meaning in English. This method will also rely on load_library to first load the YAML file.
end