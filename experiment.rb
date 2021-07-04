# require modules here
require 'yaml'

def load_library(file_path)
  # code goes here
  emo_lib = YAML.load_file(file_path)
  
  outcome = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  
  emo_lib.each do |description, emo_face|
    outcome["get_meaning"][emo_face[1]] = description
    outcome["get_emoticon"][emo_face[0]] = emo_face[1]
  end 
  outcome
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emo_lib = load_library(file_path)
  emo_lib["get_emoticon"][emoticon]
  if emo_lib["get_emoticon"][emoticon]
    emo_lib["get_emoticon"][emoticon]
  else 
    "Sorry, that emoticon was not found"
  end 
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  emo_lib = load_library(file_path)
  answer = emo_lib["get_meaning"][emoticon]
  
  if answer = emo_lib["get_meaning"][emoticon]
    answer = emo_lib["get_meaning"][emoticon]
  else 
    "Sorry, that emoticon was not found"
  end 
end

 
  


