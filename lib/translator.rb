require "pry"
require "yaml"

def load_library(emoticon_hashsource)
emoticon_hashsource = YAML.load_file("./lib/emoticons.yml")
emoticons =  {
  'get_meaning' => {},
  'get_emoticon' => {}
}
emoticon_hashsource.each do |key, val|
  emoticons['get_emoticon'][val[0]] = emoticon_hashsource[key][1]
    emoticons['get_meaning'][val[1]] =key
end
emoticons
end
 
  
def get_japanese_emoticon(emoticon_hashsource,emoticons)
result = load_library(emoticon_hashsource)['get_emoticon'][emoticons]
result ? result: "Sorry, that emoticon was not found"
end


def get_english_meaning(emoticon_hashsource,emoticons)
result = load_library(emoticon_hashsource)['get_meaning'][emoticons]
result ? result: "Sorry, that emoticon was not found"
end 
  