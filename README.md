# The Homework Hub :dancers::dancers::running:

App created by: The Homework Homies - Alex, Jess, Taylor, Thais and Natasha 

# DESCRIPTION OF APP
The Homework Hub app is able to track students homework submission throughout their GA course. There are  3 portals: Instructor, Student and Producer. This app is a perfect way for students and their instructors to analyse students progress in the class. 

Instructors can create new homework assignments and homework takeaways that will save to their github. They can view all of their cohorts and students pending and submitted assignments, track students progress in the course, and grade their submitted assignments. Instructors are able to view a list of 'At-Risk' students who have submitted less than 20% of assignments. And finally, instructors are able to create new cohorts and add students and producers to that cohort. 

Students can check their progress in the course, track their homework submission scores, create new homework submissions, and read gists created by their instructors.

Producers are able to view all of their cohorts and student submissions for each assignment. They are also able to view a list of 'At-Risk' students who have submitted less than 20% of assignments. 

# TECHNOLOGIES USED
HTML, CSS, Bootstrap, Ruby on Rails, RedCarpet Gem, BCrypt, ActionMailer, Jquery, javaScript, Github API, Octokit, HTTParty

# USER STORIES

**Student Portal**

1. A student may log in

2. A student may submit a link to their homework assignments

3. A student can view their own homework submissions

4. A student should be able to view their grades for all their homework

5. If a homework assignment has not been graded, they should see their grade displayed as "Grade Pending"

6. If a student's "Unsatisfactory" percentage rises above 20%, the front page should display a notification that they need to contact their instructional team for help with a link to send an email to their instructor. In addition, they should recieve an email with the same notification

7. A student can view a list of homework gists that their instructors have created

8. A student can see the content of the gists on the site with a link to the gist on github

9. If a Takeaways gist has been created, the student should recieve an email notification alerting them

10. A student should be able to see all of the courses/cohorts the student is in

11. A user should be able to go to their userpage when they click on their username

12. A student should get an email if an instructor creates a new cohort/course


**Instructor Portal**

1. An instructor may log in

2. An instructor should be able to see all the classes they are instructing

3. An instructor should be able to view homework submissions of every student in their current course

4. They should be able to see a list of 'ungraded' and 'graded homework'

5. They should be able to mark ungraded homework as Complete, Incomplete or Unsatisfactory(they should be able to update the score at anytime)

6. An instructor should be able to view a list of all his students

7. An instructor should be able to view a list of all students whose completion rates are low and need talking to

8. An instructor should be able to create homework takeaway markdowns for each assignment

9. They should be able to view, edit, and delete takeaways

10. These markdowns should be automatically available on github as gists

11. An instructor can create a new cohort/course through the app


**Producer Portal**

1. A course producer can run several courses

2. The producer should see a list of all the cohorts they are producing

3. A producer should be able to view the homework completion records for each cohort (each student's name, each student's number of complete incomplete, and satisfactory assignments and percentages for each)


# E.R.D. 
![alt-text](https://github.com/homework-homies/project3-homework-app/blob/master/Screen%20Shot%202015-12-16%20at%203.49.23%20PM.png)

# WIREFRAMES
[Wire Frame in PDF](/homework_hub_wireframes.pdf)

# LINK TO TRELLO BOARD
[Homework Homies Trello Board](https://trello.com/homeworkhomiesproject)

# LINK TO HOMEWORK APP
[Homework-App](https://infinite-plains-9478.herokuapp.com/)
