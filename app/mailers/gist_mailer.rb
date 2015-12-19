class GistMailer < ApplicationMailer
  default from: 'gahomeworkhub@gmail.com'

  def gist_email(student)
    @st
    @url = 'www.gistlink.com'
    mail(to: email, subject: "Attention! A New Gist Has Been Created")
  end

end
 