class Question
	def initialize(text_of_question, rigth_answer, count)
		@text_of_question = text_of_question
		@rigth_answer = rigth_answer
		@count = count
	end

	def text_of_question
		return @text_of_question
	end

	def rigth_answer
		return @rigth_answer
	end

	def count
		return @count
	end 	
end	