require_relative 'post'
require_relative 'link'
require_relative 'task'
require_relative 'memo'

puts "Привет! Я твой Блокнот!"
puts "Что хочешь записать?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size

  choices.each_with_index do |type, index|
    puts "#{index + 1}. #{type}"
  end

  choice = STDIN.gets.chomp.to_i - 1
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Запись сохранена!"

