require_relative 'lib/question'

question = []
count_question = 3
count_user = 0
rigth_answer_user = 0 

file_names = Dir["data/*"]
question = file_names.map do |file_name|
	file = File.new(file_name, 'r:UTF-8')
	lines = file.readlines
	Question.new(lines[0], lines[1], lines[2])
	file.close
end	

question_for_user = question.sample(count_question)

question_for_user.each do |question| 
	puts question.text_of_question
	answer_user = STDIN.gets.to_s

	if answer_user == question.rigth_answer
		count_user += question.count.to_i
		rigth_answer_user += 1
		puts "Yes" 
	else 
		puts "No, rigth answer is #{question.rigth_answer}"
	end		
end	

puts "Правильных ответов: #{rigth_answer_user} из #{count_question}"
puts "Вы набрали #{count_user} баллов"