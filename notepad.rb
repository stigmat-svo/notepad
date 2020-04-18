require_relative 'lib/link'
require_relative 'lib/memo'
require_relative 'lib/task'
require_relative 'lib/post'

puts "Привет! Я твой Блокнот!"
puts "Что хочешь записать?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size

  choices.each.with_index do |type, index|
    puts "#{index}. #{type}"
  end

  choice = STDIN.gets.chomp.to_i - 1
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Запись сохранена!"

