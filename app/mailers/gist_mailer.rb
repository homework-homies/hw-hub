class GistMailer < ApplicationMailer
  default from: 'gahomeworkhub@gmail.com'

  def gist_email(email)
    @url = 'http://example.com/GIST_LINK_HERE'
    mail(to: email, subject: "Attention! A New Gist Has Been Created")
  end

end
 