class FilmMailer < ActionMailer::Base
  default from: "from@live-idea.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.film_mailer.new.subject
  #
  def new (film, user)
    @greeting = "Hi"
    @film = film
    @user = user
    mail to: user.email, subject: "New film added"
  end
end
