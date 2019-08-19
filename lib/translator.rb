require 'yaml'

def load_library(file)
  data = YAML.load_file(file)
  get_meaning = {}
  get_emo ={}
  
  data.map do |key, value|
    get_meaning[value[1]] = key
  end
  
  data.map do |key, value|
    get_emo[value[0]] = value[1]
  end
    
  return {:get_meaning => get_meaning.to_h, :get_emoticon => get_emo.to_h}
end


def get_japanese_emoticon(file, emoticon)
  emoticon_hash = load_library(file)
  inner_hash = emoticon_hash.values[1]
  
  if inner_hash.include?(emoticon)
    inner_hash.each do |key, value|
      if key == emoticon 
        return value
      end
    end
  else
    return "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(file, emoticon)
  emoticon_hash = load_library(file)
  inner_hash = emoticon_hash.values[0]
  
  if inner_hash.include?(emoticon)
    inner_hash.each do |key, value|
      if key == emoticon 
        return value
      end
    end
  else
    return "Sorry, that emoticon was not found"
  end
end










=begin

#eng_cons = file.values.map { |value| value[0] }
  #jap_cons = file.values.map { |value| value[1] }
  #meanings = file.keys

file.values.map { |value| value[0] }
=> ["O:)", ">:(", ":O", "%)", ":$", "><>", "8D", "=D", ":)", ":*", ":'(", ":o", ";)"]
 
file.values.map { |value| value [1] }
=> ["☜(⌒▽⌒)☞", "ヽ(ｏ`皿′ｏ)ﾉ", "(ΘεΘ;)", "(゜.゜)", "(#^.^#)", ">゜))))彡", "(^0_0^)", "(￣ー￣)", "(＾ｖ＾)", "(*^3^)/~☆", "(Ｔ▽Ｔ)", "o_O", "(^_-)"]




file = {
  "angel"=>["O:)", "☜(⌒▽⌒)☞"], 
  "angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"], 
  "bored"=>[":O", "(ΘεΘ;)"], 
  "confused"=>["%)", "(゜.゜)"], 
  "embarrased"=>[":$", "(#^.^#)"],
  "fish"=>["><>", ">゜))))彡"], 
  "glasses"=>["8D", "(^0_0^)"], 
  "grinning"=>["=D", "(￣ー￣)"], 
  "happy"=>[":)", "(＾ｖ＾)"], 
  "kiss"=>[":*", "(*^3^)/~☆"], 
  "sad"=>[":'(", "(Ｔ▽Ｔ)"], 
  "surprised"=>[":o", "o_O"], 
  "wink"=>[";)", "(^_-)"]
}

get_meaning_hash = {:japanese_emoticons => "meaning of emoticon"}
# call jap emos by => file.values[1]
# call jap emo meaning by => file.keys

get_meaning_hash = {}
get_meaning_hash[file.values[1]] =file.keys

get_emoticon_hash = {:english_emoticons => "japanese_equivalent"}


2.6.1 :036 > file.map do |key, value|
2.6.1 :037 >     hash = {}
2.6.1 :038?>     hash[key] = value[0]
2.6.1 :039?>     p hash
2.6.1 :040?>   end
{"angel"=>"O:)"}
{"angry"=>">:("}
{"bored"=>":O"}
{"confused"=>"%)"}
{"embarrased"=>":$"}
{"fish"=>"><>"}
{"glasses"=>"8D"}
{"grinning"=>"=D"}
{"happy"=>":)"}
{"kiss"=>":*"}
{"sad"=>":'("}
{"surprised"=>":o"}
{"wink"=>";)"}
=> [{"angel"=>"O:)"}, {"angry"=>">:("}, {"bored"=>":O"}, {"confused"=>"%)"}, {"embarrased"=>":$"}, {"fish"=>"><>"}, {"glasses"=>"8D"}, {"grinning"=>"=D"}, {"happy"=>":)"}, {"kiss"=>":*"}, {"sad"=>":'("}, {"surprised"=>":o"}, {"wink"=>";)"}]
2.6.1 :041 >

=end