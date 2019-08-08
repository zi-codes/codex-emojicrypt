require_relative 'emojis'

def cleanse(string)

  string.split.uniq

end

p cleanse(Emoji.all)
