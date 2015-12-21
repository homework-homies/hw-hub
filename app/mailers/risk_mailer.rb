class RiskMailer < ApplicationMailer
  default from: 'gahomeworkhub@gmail.com'

  def risk_email(student)
    @student = student
    mail(to: student, subject: "Your completion rate has fallen below 20%!")
  end
end