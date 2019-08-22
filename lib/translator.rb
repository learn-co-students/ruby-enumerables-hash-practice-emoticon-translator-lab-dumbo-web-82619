# require modules here

require 'yaml'

def load_library(file_path)
  # code goes here
  emo_lib = YAML.load_file(file_path)
  
  output_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
   }
   
   emo_lib.each do |emotion, emo_face|
     output_hash["get_meaning"][emo_face[1]] = emotion
     output_hash["get_emoticon"][emo_face[0]] = emo_face[1]
   end
   output_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emo_lib = load_library(file_path)
  answer = emo_lib["get_emoticon"][emoticon]
  
  if !!answer
    answer
  else 
    "Sorry, that emoticon was not found"
  end 
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  emo_lib = load_library(file_path)
  answer = emo_lib["get_meaning"][emoticon]
  
  if !!answer
    answer
  else 
    "Sorry, that emoticon was not found"
  end 
end