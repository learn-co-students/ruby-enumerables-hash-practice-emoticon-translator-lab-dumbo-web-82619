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


 
  


