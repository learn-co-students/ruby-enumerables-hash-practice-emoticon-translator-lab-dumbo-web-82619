require "yaml"# require modules here

def load_library(file)
  # code goes here
  emotes = YAML.load_file(file)
  
  emotes_library = {"get_meaning" => {}, "get_emoticon" => {}}
  emotes.map{|meaning, emotes_array|
    emotes_library["get_meaning"][emotes_array[1]] = meaning
    emotes_library["get_emoticon"][emotes_array[0]] = emotes_array[1]
  }
  return emotes_library
end

def get_japanese_emoticon(file, e_emote)
  # code goes here
  emotes = load_library(file)
  if emotes["get_emoticon"].key?(e_emote) == true
    return emotes["get_emoticon"][e_emote]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file, j_emote)
  # code goes here
  emotes = load_library(file)
   if emotes["get_meaning"].key?(j_emote) == true
    return emotes["get_meaning"][j_emote]
  else
    "Sorry, that emoticon was not found"
  end
end