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

cohort1 = Cohort.create({cohort_name: "persephone", start_on: Date.new(2015,10,19), end_on: Date.new(2016,1,29)})
cohort2 = Cohort.create({cohort_name: "bacon", start_on: Date.new(2015,9,28), end_on: Date.new(2015,12,18)})
cohort3 = Cohort.create({cohort_name: "tomato", start_on: Date.new(2015,9,28), end_on: Date.new(2015,12,18)})

assignment1 = Assignment.create({ title: "assignment1", prompt_link:"assignment1 link", assigned_on: Date.new(2015,10,28)})
assignment2 = Assignment.create({ title: "assignment2", prompt_link:"assignment2 link", assigned_on: Date.new(2015,11,3)})
assignment3 = Assignment.create({ title: "assignment3", prompt_link:"assignment3 link", assigned_on: Date.new(2015,11,22)})

cohort1.instructors.push(instructor1)

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


assignment1.submissions.push(submission1)
assignment2.submissions.push(submission2)
assignment3.submissions.push(submission3)

producer1.cohorts.push(cohort1)
producer2.cohorts.push(cohort2)
producer3.cohorts.push(cohort3)
