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
    # what procedure fixes the problem here?
    emo_library["get_emoticon"].each do |e_emo, j_emo|
      
    end 
    
end

def get_english_meaning
  # code goes here
end