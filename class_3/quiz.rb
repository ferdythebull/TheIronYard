#10 questions
#multiple choice
#after quiz, tell how many were correct

@answers = [] #contain answer choices that user chooses
@wrong_answers = [] #contains wrong answers that user chooses
question = [] #array to hold values for current questions multiple choices
answer_choices = [] #contain answer choices

@question_on = true #activates question

def check_question (answer) #parameters is anything passed inside function
	answer.upcase! #turns answer into uppercase
	puts "You chose letter #{answer}."
	correct_answer = @question[:correct_answer]
	if answer == correct_answer
		@answers.push(correct_answer)
	else
		@wrong_answers.push(answer)
	end
	@question_on = false
	answer = '' #answer user gave for question
	correct_answer = '' #correct answer for question
end

	puts "To answer each question, please enter the letter of your choice. This is a 10 question quiz."

	while @question_on == true #while loop for question 1
		puts "Question 1\n"
		@question = {
				question: "Why did the chicken cross the road?",
				correct_answer: "B",
				answer_choices: [
					" A: To see its mom.\n B: To get to the other side.\n C: Because he felt like it.\n D: To go to the convenience store.\n E: All of the above.\n"
				]
			}
			puts @question [:question]
			puts @question [:answer_choices]
			# puts answer_choices.chomp
			puts "Please input the letter of your choice:"
			answer = gets.chomp
			check_question(answer)#run check_question
	end
    @question_on = true
	while @question_on == true #while loop for question 1
		puts "Question 2\n"
		@question = {
				question: "How can you drop a raw egg onto a concrete floor without cracking it?",
				correct_answer: "D",
				answer_choices: [
					" A: Use an old egg.\n B: Drop it slowly.\n C: Hard-boil the egg before you drop it.\n D: Concrete floors are very hard to crack.\n E: All of the above.\n"
				]
			}
			puts @question [:question]
			puts @question [:answer_choices]
			# puts answer_choices.chomp
			puts "Please input the letter of your choice:"
			answer = gets.chomp
			check_question(answer)#run check_question
	end
	@question_on = true
	while @question_on == true #while loop for question 1
		puts "Question 3\n"
		@question = {
				question: "If it took eight men ten hours to build a wall, how long would it take four men to build it?",
				correct_answer: "A",
				answer_choices: [
					" A: No time at all. It's already built.\n B: Five hours.\n C: Twenty hours.\n D: Ten hours.\n E: All of the above.\n"
				]
			}
			puts @question [:question]
			puts @question [:answer_choices]
			# puts answer_choices.chomp
			puts "Please input the letter of your choice:"
			answer = gets.chomp
			check_question(answer)#run check_question
	end
	@question_on = true
	while @question_on == true #while loop for question 1
		puts "Question 4\n"
		@question = {
				question: "Approximately how many birthdays does the average Japanese woman have?",
				correct_answer: "C",
				answer_choices: [
					" A: Nobody knows.\n B: 87, since that's the average lifespan of an average Japanese woman.\n C: Just one. The rest are anniversaries.\n D: You'll have to ask them themselves.\n E: All of the above.\n"
				]
			}
			puts @question [:question]
			puts @question [:answer_choices]
			# puts answer_choices.chomp
			puts "Please input the letter of your choice:"
			answer = gets.chomp
			check_question(answer)#run check_question
	end
	@question_on = true
	while @question_on == true #while loop for question 1
		puts "Question 5\n"
		@question = {
				question: "If you had three apples and four oranges in one hand and four apples and three oranges in the other hand, what would you have?",
				correct_answer: "E",
				answer_choices: [
					" A: A lot of fruit.\n B: Seven apples and seven oranges.\n C: Too much fruit to eat all at once.\n D: Very large hands.\n E: All of the above.\n"
				]
			}
			puts @question [:question]
			puts @question [:answer_choices]
			# puts answer_choices.chomp
			puts "Please input the letter of your choice:"
			answer = gets.chomp
			check_question(answer)#run check_question
	end
	@question_on = true
	while @question_on == true #while loop for question 1
		puts "Question 6\n"
		@question = {
				question: "How can you lift an elephant with one hand?",
				correct_answer: "D",
				answer_choices: [
					" A: Get that hand really, really strong.\n B: Meditate on the concept of lifting an elephant with one hand.\n C: Use a giant mechanical hand.\n D: It's not a problem, since you will never find an elephant with one hand.\n E: All of the above.\n"
				]
			}
			puts @question [:question]
			puts @question [:answer_choices]
			# puts answer_choices.chomp
			puts "Please input the letter of your choice:"
			answer = gets.chomp
			check_question(answer)#run check_question
	end
	@question_on = true
	while @question_on == true #while loop for question 1
		puts "Question 7\n"
		@question = {
				question: "How can a man go eight days without sleep?",
				correct_answer: "B",
				answer_choices: [
					" A: Lots of caffeine.\n B: He sleeps at night.\n C: Performance-enhancing supplements.\n D: By separating himself from the fabric of time and space.\n E: All of the above.\n"
				]
			}
			puts @question [:question]
			puts @question [:answer_choices]
			# puts answer_choices.chomp
			puts "Please input the letter of your choice:"
			answer = gets.chomp
			check_question(answer)#run check_question
	end
	@question_on = true
	while @question_on == true #while loop for question 1
		puts "Question 8\n"
		@question = {
				question: "(fill in the blank) Rain ___?",
				correct_answer: "E",
				answer_choices: [
					" A: often falls but never gets hurt.\n B: is wet.\n C: rhymes with 'lane'.\n D: drops from clouds.\n E: All of the above.\n"
				]
			}
			puts @question [:question]
			puts @question [:answer_choices]
			# puts answer_choices.chomp
			puts "Please input the letter of your choice:"
			answer = gets.chomp
			check_question(answer)#run check_question
	end
	@question_on = true
	while @question_on == true #while loop for question 1
		puts "Question 9\n"
		@question = {
				question: "What is that no man ever saw which never was but always will be?",
				correct_answer: "D",
				answer_choices: [
					" A: la justicia.\n B: Yesterday.\n C: Today.\n D: Tomorrow.\n E: All of the above.\n"
				]
			}
			puts @question [:question]
			puts @question [:answer_choices]
			# puts answer_choices.chomp
			puts "Please input the letter of your choice:"
			answer = gets.chomp
			check_question(answer)#run check_question
	end
	@question_on = true
	while @question_on == true #while loop for question 1
		puts "Question 10\n"
		@question = {
				question: "What three letters change a girl into a woman?",
				correct_answer: "D",
				answer_choices: [
					" A: A.\n B: G.\n C: E.\n D: All of the above.\n"
				]
			}
			puts @question [:question]
			puts @question [:answer_choices]
			# puts answer_choices.chomp
			puts "Please input the letter of your choice:"
			answer = gets.chomp
			check_question(answer)#run check_question
	end

	puts "Questions right: #{@answers.count}"
	puts "Questions wrong: #{@wrong_answers.count}"