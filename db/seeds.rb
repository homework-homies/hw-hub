<<<<<<< HEAD
instructor1 = Instructor.create({name: "Phil", email: "instructor1@ga.com", password: "password", password_confirmation: "password"})
instructor2 = Instructor.create({name: "Anna", email: "instructor2@ga.com", password: "password", password_confirmation: "password"})
instructor3 = Instructor.create({name: "Sung", email: "instructor3@ga.com", password: "password", password_confirmation: "password"})
instructor4 = Instructor.create({name: "Abner", email: "instructor4@ga.com", password: "password", password_confirmation: "password"})
instructor5 = Instructor.create({name: "Robert", email: "instructor5@ga.com", password: "password", password_confirmation: "password"})

producer1 = Producer.create({name: "Stephanie", email: "producer1@ga.com", password: "password", password_confirmation: "password"})
producer2 = Producer.create({name: "Evan", email: "producer2@ga.com", password: "password", password_confirmation: "password"})
producer3 = Producer.create({name: "Nevan", email: "producer3@ga.com", password: "password", password_confirmation: "password"})
producer4 = Producer.create({name: "Jo", email: "producer4@ga.com", password: "password", password_confirmation: "password"})
producer5 = Producer.create({name: "Mike", email: "producer5@ga.com", password: "password", password_confirmation: "password"})

student1 = Student.create({name: "Natasha", email: "student1@ga.com", password: "password", password_confirmation: "password"})
student2 = Student.create({name: "Alex", email: "student2@ga.com", password: "password", password_confirmation: "password"})
student3 = Student.create({name: "Thais", email: "student3@ga.com", password: "password", password_confirmation: "password"})
student4 = Student.create({name: "Taylor", email: "taylorpbasso@gmail.com", password: "password", password_confirmation: "password"})
student5 = Student.create({name: "Jess", email: "student5@ga.com", password: "password", password_confirmation: "password"})
student6 = Student.create({name: "Dana", email: "student6@ga.com", password: "password", password_confirmation: "password"})
student7 = Student.create({name: "Kim", email: "student7@ga.com", password: "password", password_confirmation: "password"})
student8 = Student.create({name: "Chris", email: "student8@ga.com", password: "password", password_confirmation: "password"})
student9 = Student.create({name: "Amadeo", email: "student9@ga.com", password: "password", password_confirmation: "password"})
student10 = Student.create({name: "Meredith", email: "student10@ga.com", password: "password", password_confirmation: "password"})
# student11 = Student.create({name: "De", email: "student11@ga.com", password: "password", password_confirmation: "password"})
# student12 = Student.create({name: "Frances", email: "student12@ga.com", password: "password", password_confirmation: "password"})
# student13 = Student.create({name: "Isabel", email: "student13@ga.com", password: "password", password_confirmation: "password"})
# student14 = Student.create({name: "Nate", email: "student14@ga.com", password: "password", password_confirmation: "password"})
# student15 = Student.create({name: "Anousha", email: "student15@ga.com", password: "password", password_confirmation: "password"})
# student16 = Student.create({name: "Johnny", email: "student16@ga.com", password: "password", password_confirmation: "password"})

submission1 = Submission.create({submitted_on: Date.new(2015,11, 23), grade_status: "complete", comments: "comment section", title: "submission1", submission_link:"submission link"})
submission2 = Submission.create({submitted_on: Date.new(2015,10, 19), grade_status: "incomplete", comments: "comment section", title: "submission2", submission_link:"submission link"})
submission3 = Submission.create({submitted_on: Date.new(2015,12, 3), grade_status: "pending", comments: "comment section", title: "submission3", submission_link:"submission link"})

gist1 = Gist.create({ title: "Project 2", content:"Heroku struggles", gist_link: "http://gist1_link/", date: Date.new(2015,10,22)})
gist2 = Gist.create({ title: "Oregon Trails App", content:"Ruby Rails issues", gist_link: "http://gist2_link/", date: Date.new(2015,10,25)})
gist3 = Gist.create({ title: "MoMA App", content:"So many more issues", gist_link: "http://gist3_link/", date: Date.new(2015,11,3)})
gist4 = Gist.create({ title: "SQLITE3", content:"This is what you guys all did wrong...", gist_link: "http://gist4_link/", date: Date.new(2015,11,8)})
gist5 = Gist.create({ title: "ShylockBot", content:"Wasnt that a mindfuck?", gist_link: "hhtp://gist5_link/", date: Date.new(2015,12,3)})
gist6 = Gist.create({ title: "MTA", content:"Make sure you dont forget this...", gist_link: "http://gist6_link/", date: Date.new(2015,12,14)})
=======
instructor1 = Instructor.create({name: "instructor1", email: "instructor1@ga.com", password: "password", password_confirmation: "password"})
instructor2 = Instructor.create({name: "instructor2", email: "instructor2@ga.com", password: "password", password_confirmation: "password"})
instructor3 = Instructor.create({name: "instructor3", email: "instructor3@ga.com", password: "password", password_confirmation: "password"})

producer1 = Producer.create({name: "producer1", email: "producer1@ga.com", password: "password", password_confirmation: "password"})
producer2 = Producer.create({name: "producer2", email: "producer2@ga.com", password: "password", password_confirmation: "password"})
producer3 = Producer.create({name: "producer3", email: "producer3@ga.com", password: "password", password_confirmation: "password"})

student1 = Student.create({name: "Taylor Basso", email: "taylorpbasso@gmail.com", password: "password", password_confirmation: "password", cohort_id: 1})
student2 = Student.create({name: "student1", email: "student2@ga.com", password: "password", password_confirmation: "password"})
student3 = Student.create({name: "student1", email: "student3@ga.com", password: "password", password_confirmation: "password"})

submission1 = Submission.create({submitted_on: "12348901", grade_status: "complete", comments: "comment section", title: "submission1", submission_link:"submission link"})
submission2 = Submission.create({submitted_on: "33248901", grade_status: "incomplete", comments: "comment section", title: "submission2", submission_link:"submission link"})
submission3 = Submission.create({submitted_on: "52348901", grade_status: "pending", comments: "comment section", title: "submission3", submission_link:"submission link"})

gist1 = Gist.create({ title: "gist1", content:"gist1 content", gist_link: "gist1 link", date: Date.new(2015,10,22)})
gist2 = Gist.create({ title: "gist2", content:"gist2 content", gist_link: "gist2 link", date: Date.new(2015,11,5)})
gist3 = Gist.create({ title: "gist3", content:"gist3 content", gist_link: "gist3 link", date: Date.new(2015,12,3)})
>>>>>>> 2ecea307bfb5678dc639de24909d1d639804d02a

cohort1 = Cohort.create({cohort_name: "persephone", start_on: Date.new(2015,10,19), end_on: Date.new(2016,1,29)})
cohort2 = Cohort.create({cohort_name: "bacon", start_on: Date.new(2015,9,28), end_on: Date.new(2015,12,18)})
cohort3 = Cohort.create({cohort_name: "tomato", start_on: Date.new(2015,9,28), end_on: Date.new(2015,12,18)})
cohort4 = Cohort.create({cohort_name: "lettuce", start_on: Date.new(2015,9,28), end_on: Date.new(2015,12,18)})

assignment1 = Assignment.create({ title: "Project 2", prompt_link:"http://assignment1_link/", assigned_on: Date.new(2015,10,28)})
assignment2 = Assignment.create({ title: "ShylockBot", prompt_link:"http://assignment2_link/", assigned_on: Date.new(2015,10,31)})
assignment3 = Assignment.create({ title: "MTA", prompt_link:"http://assignment3_link/", assigned_on: Date.new(2015,11,2)})
assignment4 = Assignment.create({ title: "SQLITE3", prompt_link:"http://assignment3_link/", assigned_on: Date.new(2015,11,14)})
assignment5 = Assignment.create({ title: "Oregon Trails App", prompt_link:"http://assignment3_link/", assigned_on: Date.new(2015,11,28)})
assignment6 = Assignment.create({ title: "Migrations Practice", prompt_link:"http://assignment3_link/", assigned_on: Date.new(2015,12,3)})


#join instructors & cohorts
cohort1.instructors.push(instructor1)
cohort1.instructors.push(instructor2)
cohort1.instructors.push(instructor3)
cohort2.instructors.push(instructor1)
cohort2.instructors.push(instructor2)
cohort3.instructors.push(instructor2)
cohort3.instructors.push(instructor3)
cohort4.instructors.push(instructor4)
cohort4.instructors.push(instructor3)
cohort4.instructors.push(instructor5)
cohort4.instructors.push(instructor4)

instructor1.gists.push(gist1)
instructor1.gists.push(gist6)
instructor2.gists.push(gist2)
instructor2.gists.push(gist1)
instructor3.gists.push(gist3)
instructor3.gists.push(gist5)
instructor4.gists.push(gist4)
instructor4.gists.push(gist5)
instructor5.gists.push(gist5)
instructor5.gists.push(gist6)

cohort1.gists.push(gist1)
cohort1.gists.push(gist2)
cohort1.gists.push(gist3)
cohort2.gists.push(gist3)
cohort2.gists.push(gist6)
cohort2.gists.push(gist5)
cohort3.gists.push(gist2)
cohort3.gists.push(gist4)
cohort3.gists.push(gist6)
cohort4.gists.push(gist4)
cohort4.gists.push(gist5)
cohort4.gists.push(gist6)

student1.submissions.push(submission2)
student2.submissions.push(submission1)
student3.submissions.push(submission3)
student4.submissions.push(submission1)
student5.submissions.push(submission2)
student6.submissions.push(submission3)
student7.submissions.push(submission1)
student8.submissions.push(submission2)
student9.submissions.push(submission3)
student10.submissions.push(submission1)

student1.assignments.push(assignment1)
student2.assignments.push(assignment2)
student3.assignments.push(assignment3)
student4.assignments.push(assignment4)
student5.assignments.push(assignment5)
student6.assignments.push(assignment6)
student7.assignments.push(assignment1)
student8.assignments.push(assignment2)
student9.assignments.push(assignment3)
student10.assignments.push(assignment4)

cohort1.assignments.push(assignment1)
cohort2.assignments.push(assignment2)
cohort3.assignments.push(assignment3)
cohort4.assignments.push(assignment4)



instructor1.assignments.push(assignment1)
instructor2.assignments.push(assignment2)
instructor3.assignments.push(assignment3)


cohort1.students.push(student1)
cohort2.students.push(student2)
cohort3.students.push(student3)


assignment1.submissions.push(submission1)
assignment2.submissions.push(submission2)
assignment3.submissions.push(submission3)

producer1.cohorts.push(cohort1)
producer2.cohorts.push(cohort2)
producer3.cohorts.push(cohort3)
