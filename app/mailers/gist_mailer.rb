class GistMailer < ApplicationMailer
  default from: 'gahomeworkhub@gmail.com'

  def gist_email(student)
    @student = student
    @url = 'www.gistlink.com'
    mail(to: student, subject: "Attention! A New Gist Has Been Created")
  end

end
 