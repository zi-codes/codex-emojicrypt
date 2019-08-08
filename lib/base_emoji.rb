require_relative 'emojis'
require_relative 'base_anything'


base_emoji = Base.new(Emoji.all)

p base_emoji.encrypt(100)
p base_emoji.encrypt(122314)
p base_emoji.encrypt(1_000_000)
