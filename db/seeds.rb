Instructor.delete_all
Producer.delete_all
Student.delete_all
Submission.delete_all
Gist.delete_all
Cohort.delete_all
Assignment.delete_all
  
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
student11 = Student.create({name: "De", email: "student11@ga.com", password: "password", password_confirmation: "password"})
student12 = Student.create({name: "Frances", email: "student12@ga.com", password: "password", password_confirmation: "password"})
student13 = Student.create({name: "Isabel", email: "student13@ga.com", password: "password", password_confirmation: "password"})
student14 = Student.create({name: "Nate", email: "student14@ga.com", password: "password", password_confirmation: "password"})
student15 = Student.create({name: "Anousha", email: "student15@ga.com", password: "password", password_confirmation: "password"})
student16 = Student.create({name: "Johnny", email: "student16@ga.com", password: "password", password_confirmation: "password"})


assignment1 = Assignment.create({ title: "Project 2", prompt_link:"http://assignment1_link/", assigned_on: Date.new(2015,10,28)})
assignment2 = Assignment.create({ title: "ShylockBot", prompt_link:"http://assignment2_link/", assigned_on: Date.new(2015,10,31)})
assignment3 = Assignment.create({ title: "MTA", prompt_link:"http://assignment3_link/", assigned_on: Date.new(2015,11,2)})
assignment4 = Assignment.create({ title: "SQLITE3", prompt_link:"http://assignment3_link/", assigned_on: Date.new(2015,11,14)})
assignment5 = Assignment.create({ title: "Oregon Trails App", prompt_link:"http://assignment3_link/", assigned_on: Date.new(2015,11,28)})
assignment6 = Assignment.create({ title: "Migrations Practice", prompt_link:"http://assignment3_link/", assigned_on: Date.new(2015,12,3)})

# submission1 = Submission.create({submitted_on: Date.new(2015,11, 23), grade_status: "complete", comments: "I found this really easy", title: "HW for W02 D01", submission_link:"http:/github/homework_submission/"})
# submission2 = Submission.create({submitted_on: Date.new(2015,10, 19), grade_status: "incomplete", comments: "I didnt have time to do this homework", title: "HW for W08 D05", submission_link:"http:/github/homework_submission/"})
# submission3 = Submission.create({submitted_on: Date.new(2015,12, 3), grade_status: "pending", comments: "I had trouble with this...", title: "HW for W09 D03", submission_link:"http:/github/homework_submission/"})
# submission4 = Submission.create({submitted_on: Date.new(2015,12, 3), grade_status: "complete", comments: "I finished the homework really quickly", title: "HW for W02 D04", submission_link:"http:/github/homework_submission/"})
# submission5 = Submission.create({submitted_on: Date.new(2015,12, 3), grade_status: "incomplete", comments: "I couldnt turn my computer on", title: "HW for W05 D03", submission_link:"http:/github/homework_submission/"})
# submission6 = Submission.create({submitted_on: Date.new(2015,12, 3), grade_status: "pending", comments: "I had troble understanding closures", title: "HW for W09 D05", submission_link:"http:/github/homework_submission/"})

gist1 = Gist.create({ title: "Project 2", content:"Heroku struggles", gist_link: "http://gist1_link/", date: Date.new(2015,10,22)})
gist2 = Gist.create({ title: "Oregon Trails App", content:"Ruby Rails issues", gist_link: "http://gist2_link/", date: Date.new(2015,10,25)})
gist3 = Gist.create({ title: "MoMA App", content:"So many more issues", gist_link: "http://gist3_link/", date: Date.new(2015,11,3)})
gist4 = Gist.create({ title: "SQLITE3", content:"This is what you guys all did wrong...", gist_link: "http://gist4_link/", date: Date.new(2015,11,8)})
gist5 = Gist.create({ title: "ShylockBot", content:"Wasnt that a mindfuck?", gist_link: "hhtp://gist5_link/", date: Date.new(2015,12,3)})
gist6 = Gist.create({ title: "MTA", content:"Make sure you dont forget this...", gist_link: "http://gist6_link/", date: Date.new(2015,12,14)})
gist7 = Gist.create({ title: "Project 1", content:"Make sure to do this next time...", gist_link: "http://gist7_link/", date: Date.new(2015,11,14)})
gist8 = Gist.create({ title: "Movie Haus", content:"Make sure you dont forget this...", gist_link: "http://gist8_link/", date: Date.new(2015,12,7)})

cohort1 = Cohort.create({cohort_name: "persephone", start_on: Date.new(2015,10,19), end_on: Date.new(2016,1,29)})
cohort2 = Cohort.create({cohort_name: "bacon", start_on: Date.new(2015,9,28), end_on: Date.new(2015,12,18)})
cohort3 = Cohort.create({cohort_name: "tomato", start_on: Date.new(2015,9,28), end_on: Date.new(2015,12,18)})
cohort4 = Cohort.create({cohort_name: "lettuce", start_on: Date.new(2015,9,28), end_on: Date.new(2015,12,18)})


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

cohort1.students.push(student1)
cohort1.students.push(student2)
cohort1.students.push(student3)
cohort1.students.push(student4)
cohort2.students.push(student5)
cohort2.students.push(student6)
cohort2.students.push(student7)
cohort2.students.push(student8)
cohort3.students.push(student9)
cohort3.students.push(student10)
cohort3.students.push(student11)
cohort3.students.push(student12)
cohort4.students.push(student13)
cohort4.students.push(student14)
cohort4.students.push(student15)
cohort4.students.push(student16)

gist1.cohort = cohort1
gist1.save()
gist2.cohort = cohort1
gist2.save()
gist3.cohort = cohort2
gist3.save()
gist4.cohort = cohort2
gist4.save()
gist5.cohort = cohort3
gist5.save()
gist6.cohort = cohort3
gist6.save()
gist7.cohort = cohort4
gist7.save()
gist8.cohort = cohort4
gist8.save()

instructor1.gists.push(gist1)
instructor1.gists.push(gist3)
instructor2.gists.push(gist2)
instructor2.gists.push(gist4)
instructor3.gists.push(gist5)
instructor3.gists.push(gist6)
instructor4.gists.push(gist7)
instructor5.gists.push(gist8)

cohort1.assignments.push(assignment1)
cohort1.assignments.push(assignment2)
cohort2.assignments.push(assignment3)
cohort3.assignments.push(assignment4)
cohort4.assignments.push(assignment5)
cohort4.assignments.push(assignment6)

instructor1.assignments.push(assignment1)
instructor1.assignments.push(assignment3)
instructor2.assignments.push(assignment2)
instructor3.assignments.push(assignment4)
instructor4.assignments.push(assignment5)
instructor5.assignments.push(assignment6)

student1.assignments.push(assignment1)
student1.assignments.push(assignment2)
student2.assignments.push(assignment1)
student2.assignments.push(assignment2)
student3.assignments.push(assignment1)
student3.assignments.push(assignment2)
student4.assignments.push(assignment1)
student4.assignments.push(assignment2)
student5.assignments.push(assignment3)
student6.assignments.push(assignment3)
student7.assignments.push(assignment3)
student8.assignments.push(assignment3)
student9.assignments.push(assignment4)
student10.assignments.push(assignment4)
student11.assignments.push(assignment4)
student12.assignments.push(assignment4)
student13.assignments.push(assignment5)
student13.assignments.push(assignment6)
student14.assignments.push(assignment5)
student14.assignments.push(assignment6)
student15.assignments.push(assignment5)
student15.assignments.push(assignment6)
student16.assignments.push(assignment5)
student16.assignments.push(assignment6)


# assignment1.submissions.push(submission1)
# assignment2.submissions.push(submission2)
# assignment3.submissions.push(submission3)
# assignment4.submissions.push(submission4)
# assignment5.submissions.push(submission5)
# assignment6.submissions.push(submission6)

# student1.submissions.push(submission1)
# student1.submissions.push(submission2)
# student1.submissions.push(submission3)

# student2.submissions.push(submission4)
# student2.submissions.push(submission5)
# student2.submissions.push(submission6)

# student3.submissions.push(submission1)
# student3.submissions.push(submission2)
# student3.submissions.push(submission3)

# student4.submissions.push(submission4)
# student4.submissions.push(submission5)
# student4.submissions.push(submission6)

# student5.submissions.push(submission1)
# student5.submissions.push(submission2)
# student5.submissions.push(submission3)

# student6.submissions.push(submission4)
# student6.submissions.push(submission5)
# student6.submissions.push(submission6)

# student7.submissions.push(submission1)
# student7.submissions.push(submission2)
# student7.submissions.push(submission3)

# student8.submissions.push(submission4)
# student8.submissions.push(submission5)
# student8.submissions.push(submission6)

# student9.submissions.push(submission1)
# student9.submissions.push(submission2)
# student9.submissions.push(submission3)

# student10.submissions.push(submission4)
# student10.submissions.push(submission5)
# student10.submissions.push(submission6)

# student11.submissions.push(submission1)
# student11.submissions.push(submission2)
# student11.submissions.push(submission3)

# student12.submissions.push(submission4)
# student12.submissions.push(submission5)
# student12.submissions.push(submission6)

# student13.submissions.push(submission1)
# student13.submissions.push(submission2)
# student13.submissions.push(submission3)

# student14.submissions.push(submission4)
# student14.submissions.push(submission5)
# student14.submissions.push(submission6)

# student15.submissions.push(submission1)
# student15.submissions.push(submission2)
# student15.submissions.push(submission3)

# student16.submissions.push(submission4)
# student16.submissions.push(submission5)
# student16.submissions.push(submission6)

producer1.cohorts.push(cohort1)
producer2.cohorts.push(cohort2)
producer3.cohorts.push(cohort3)
producer1.cohorts.push(cohort4)
