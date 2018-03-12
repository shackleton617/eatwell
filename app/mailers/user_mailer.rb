class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.redeem.subject
  #

  def creation_confirmation(redemption)

    @user = redemption.user
    @redemption = redemption

    mail(
      to:       @redemption.user.email,
      subject:  "Redemption #{@redemption.offer.company} created!"
    )
  end
  def redeem(user)

    @user = current_user
    @greeting = "Hi"

    mail(to: @user.email, subject: 'You just used your points')
  end
end


