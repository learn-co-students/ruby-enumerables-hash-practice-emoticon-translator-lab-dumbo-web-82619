require "yaml"

def load_library(file_path)
  # code goes here
  emo_file = YAML.load_file(file_path)
  
  outcome = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }

  emo_file.each do |description, emo_face|
   
  end

 
end

p load_library("./lib/emoticons.yml")
 
  


