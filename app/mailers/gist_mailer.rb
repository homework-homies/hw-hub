class GistMailer < ApplicationMailer
  default from: 'gahomeworkhub@gmail.com'

  def gist_email
    @students = Student.all  
    @url = 'http://example.com/GIST_LINK_HERE'
    mail(to: @students.email, subject: "Attention! A New Gist Has Been Created")
  end

end
