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