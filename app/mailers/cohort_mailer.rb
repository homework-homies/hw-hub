class CohortMailer < ApplicationMailer
  default from: 'gahomeworkhub@gmail.com'

  def cohort_email(student)
    @student = student
    @url = "https://stark-gorge-9731.herokuapp.com/"
    
    mail(to: student, subject: "Invitation to register for the GA Homework Portal!")
  end
end