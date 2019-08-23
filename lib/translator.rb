require 'yaml'

def load_library(path)
 emote_library = YAML.load_file(path)
new_library = {:get_meaning => {}, :get_emoticon => {}}
emote_library.each { |name, emoticons|
  new_library[:get_meaning][emoticons[1]] = name 
  new_library[:get_emoticon][emoticons[0]] = emoticons[1]
}
new_library
end

def get_japanese_emoticon(path, emoticon)
lib = load_library(path)
emoticons = lib[:get_emoticon]
emoticons.select {|key,value| 
  if key == emoticon
    return value
  end
}
return "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
lib = load_library(path)
  sorry_message= "Sorry, that emoticon was not found"
  meanings = lib[:get_meaning]
  meanings.select {|key,value|
    if key == emoticon
      return value
    end
  }
  return sorry_message
end