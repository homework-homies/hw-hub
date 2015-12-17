instructor1 = Instructor.create({name: "instructor1", email: "instructor1@ga.com", password: "password", password_confirmation: "password"})
instructor2 = Instructor.create({name: "instructor2", email: "instructor2@ga.com", password: "password", password_confirmation: "password"})
instructor3 = Instructor.create({name: "instructor3", email: "instructor3@ga.com", password: "password", password_confirmation: "password"})

producer1 = Producer.create({name: "producer1", email: "producer1@ga.com", password: "password", password_confirmation: "password"})
producer2 = Producer.create({name: "producer2", email: "producer2@ga.com", password: "password", password_confirmation: "password"})
producer3 = Producer.create({name: "producer3", email: "producer3@ga.com", password: "password", password_confirmation: "password"})

assignment1 = Assignment.create({title:"ass1", prompt_link:"test link", assigned_on: "20151212"})
assignment2 = Assignment.create({title:"ass2", prompt_link:"test link", assigned_on: "20151212"})
assignment3 = Assignment.create({title:"ass3", prompt_link:"test link", assigned_on: "20151212"})

student1 = Student.create({name: "student1", email: "student1@ga.com", password: "password", password_confirmation: "password"})
student2 = Student.create({name: "student1", email: "student2@ga.com", password: "password", password_confirmation: "password"})
student3 = Student.create({name: "student1", email: "student3@ga.com", password: "password", password_confirmation: "password"})

submission1 = Submission.create({submitted_on: "12348901", grade_status: "complete", comments: "comment section"})
submission2 = Submission.create({submitted_on: "33248901", grade_status: "incomplete", comments: "comment section"})
submission3 = Submission.create({submitted_on: "52348901", grade_status: "pending", comments: "comment section"})

gist1 = Gist.create({ title: "gist1", content:"gist1 content", gist_link: "gist1 link"})
gist2 = Gist.create({ title: "gist2", content:"gist2 content", gist_link: "gist2 link"})
gist3 = Gist.create({ title: "gist3", content:"gist3 content", gist_link: "gist3 link"})

cohort1 = Cohort.create({cohort_name: "persephone", start_on: "20131928", end_on: 01234123})
cohort2 = Cohort.create({cohort_name: "bacon", start_on: "20131928", end_on: "01234123"})
cohort3 = Cohort.create({cohort_name: "tomato", start_on: "20131928", end_on: 01234123})

assignment1 = Assignment.create({ title: "assignment1", prompt_link:"assignment1 link", assigned_on: "12345903"})
assignment2 = Assignment.create({ title: "assignment2", prompt_link:"assignment2 link", assigned_on: "12345903"})
assignment3 = Assignment.create({ title: "assignment3", prompt_link:"assignment3 link", assigned_on: "12345903"})

#join instructors & cohorts
cohort1.instructors.push(instructor1)
cohort2.instructors.push(instructor1)
cohort2.instructors.push(instructor2)
cohort3.instructors.push(instructor2)

instructor1.gists.push(gist1)
instructor2.gists.push(gist2)
instructor3.gists.push(gist2)

cohort1.gists.push(gist1)
cohort1.gists.push(gist2)
cohort2.gists.push(gist3)
cohort3.gists.push(gist2)

student1.submissions.push(submission2)
student2.submissions.push(submission1)
student3.submissions.push(submission3)

student1.assignments.push(assignment1)
student2.assignments.push(assignment2)
student3.assignments.push(assignment3)

cohort1.assignments.push(assignment1)
cohort2.assignments.push(assignment2)
cohort3.assignments.push(assignment3)

instructor1.assignments.push(assignment1)
instructor2.assignments.push(assignment2)
instructor3.assignments.push(assignment3)

cohort1.students.push(student1)
cohort2.students.push(student2)
cohort3.students.push(student3)
