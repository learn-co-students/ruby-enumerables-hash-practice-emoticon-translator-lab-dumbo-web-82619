require "yaml"


def load_library(file)
  hsh = {'get_emoticon' => {}, 'get_meaning' => {}}
  emo = YAML.load_file(file)

  emo.each do |key,value|
    #puts key
    #puts value[1]
    hsh['get_emoticon'][value[0]] = emo[key][1]
    hsh['get_meaning'][value[1]] = key
  end
  hsh
end





def get_japanese_emoticon(file, emoticon)
  result = load_library(file)
  result = result['get_emoticon'][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end



def get_english_meaning(file, emoticon)
  result = load_library(file)
  result = result['get_meaning'][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end