user = User.create(email: 'test@test.com', password: 'test')
survey = user.surveys.create(title: 'Team OG')
question = survey.questions.build(question: 'Who has the best beard?')
choice1 = question.choices.build(content: 'Dan')
choice2 = question.choices.build(content: 'Christine')
choice3 = question.choices.build(content: 'Jesse')
choice4 = question.choices.build(content: 'Cole')
question.save

question = survey.questions.build(question: 'Who speaks the best Portuguese?')
choice1 = question.choices.build(content: 'Dan')
choice2 = question.choices.build(content: 'Christine')
choice3 = question.choices.build(content: 'Jesse')
choice4 = question.choices.build(content: 'Cole')
question.save

survey = user.surveys.create(title: 'Internet Lore: can has lolz?')
question = survey.questions.build(question: 'Who is the most famous internet cat?')
choice1 = question.choices.build(content: 'Grumpy Cat')
choice2 = question.choices.build(content: 'Ceiling Cat')
choice3 = question.choices.build(content: 'Long Cat')
choice4 = question.choices.build(content: 'Maru')
question.save

question = survey.questions.build(question: 'When does the narwhal bacon?')
choice1 = question.choices.build(content: 'What?')
choice2 = question.choices.build(content: 'It bacons at midnight')
choice3 = question.choices.build(content: 'Once a year at the global meetup')
choice4 = question.choices.build(content: 'Jules Verne')
question.save

question = survey.questions.build(question: 'Best Gaming Meme?')
choice1 = question.choices.build(content: 'The cake is a lie')
choice2 = question.choices.build(content: 'QQ OP')
choice3 = question.choices.build(content: 'Arrow to the knee')
choice4 = question.choices.build(content: 'Do a barrel roll!')
question.save