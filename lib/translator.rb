# require modules here
require "yaml"



def load_library(file_path)
  # code goes here
  emo_file = YAML.load_file(file_path)
  
  outcome = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }

  emo_file.each do |description, emo_face|
    outcome['get_emoticon'][emo_face[0]] = emo_face[1]
    outcome['get_meaning'][emo_face[1]] = description
  end

  outcome
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emo_library = load_library(file_path)
  
  if emo_library["get_emoticon"][emoticon]
    emo_library["get_emoticon"][emoticon]
  else 
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  emo_library = load_library(file_path)
  
  if emo_library["get_meaning"][emoticon]
    emo_library["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end 
end