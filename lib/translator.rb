def load_library(emoticon_yaml)
  require 'yaml' 
  emoticon_yaml = "./lib/emoticons.yml"
  emoticon_hash = YAML.load_file("./lib/emoticons.yml")
  new_hash = {}
  new_hash[:get_meaning] = {}
  new_hash[:get_emoticon] = {}
    emoticon_hash.each do |meaning, emoticons_array|
      new_hash[:get_meaning][emoticons_array[1]] = meaning
    end
    emoticon_hash.each do |meaning, emoticons_array|
      new_hash[:get_emoticon][emoticons_array[0]] = emoticons_array[1]
    end
  return new_hash
end

def get_japanese_emoticon(emoticon_yaml, western_emoticon)
  new_hash = load_library(emoticon_yaml)      #returns new_hash
    if new_hash[:get_emoticon].has_key?(western_emoticon) == false
      return "Sorry, that emoticon was not found"
    else
      new_hash.each do |get_key, translator_hash|
        translator_hash.each do |english_emoticon, japanese_emoticon|
          if english_emoticon == western_emoticon
            return japanese_emoticon
          end
        end
      end
    end
end

def get_english_meaning(emoticon_yaml, eastern_emoticon)
  new_hash = load_library(emoticon_yaml)
    if new_hash[:get_meaning].has_key?(eastern_emoticon) == false
      return "Sorry, that emoticon was not found"
    else
      new_hash.each do |get_key, translator_hash|
        translator_hash.each do |japanese_emoticon, english_meaning|
          if japanese_emoticon == eastern_emoticon
            return english_meaning
          end
        end
      end
    end
end
