# require modules here
require "yaml"

def load_library(path)
  # code goes here
  emoji = YAML.load_file(path)
  emoji_idek = {get_meaning: {}, get_emoticon: {}}
  emoji.each do |text, emoticon|
    emoji_idek[:get_meaning][emoticon[1]] = text
    emoji_idek[:get_emoticon][emoticon[0]] = emoticon[1]
  end
  puts emoji_idek[:get_emoticon]
  return emoji_idek
end

load_library('lib/emoticons.yml')


def get_japanese_emoticon(file, emojienglish)
  # code goes here
  emoji_idek = load_library(file)
  emoji_idek[:get_emoticon].each do |usemoji, jpemoji|
    if emojienglish == usemoji
      return jpemoji
    end
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning(file, emojijapan)
  # code goes here
  emoji = load_library(file)
  emoji[:get_meaning].each do |jpemoji, text|
    if emojijapan == jpemoji
      return text
    end
  end
  "Sorry, that emoticon was not found"
end

