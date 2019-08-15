# require modules here
require "yaml"

def load_library(yamldata)
  emoji_data = YAML.load_file('./lib/emoticons.yml')

  emoji_hash = {get_meaning: {},
                  get_emoticon: {} }
  emoji_data.each do |meaning, emoji|
    english = emoji[0]
    japanese = emoji[1]
    emoji_hash[:get_meaning][japanese] = meaning
    emoji_hash[:get_emoticon][english] = japanese
  end
  emoji_hash
end


def get_japanese_emoticon(yamldata, emoticon)
 emoji_hash= load_library(yamldata)
 emoji_match = emoji_hash[:get_emoticon][emoticon]
  
 if emoji_match == nil 
   return "Sorry, that emoticon was not found"
 else 
   return emoji_match
 end
  
end


def get_english_meaning(yamldata, emoticon)

 emoji_hash= load_library(yamldata)
 emoji_match = emoji_hash[:get_meaning][emoticon]
  
 if emoji_match
   return emoji_match
 else
   return "Sorry, that emoticon was not found"
 end

end