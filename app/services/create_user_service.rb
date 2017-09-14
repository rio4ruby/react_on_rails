# frozen_string_literal: true

class CreateUserService
  def self.[](email, passwd)
    User.where(email: email).first_or_create! do |usr|
      usr.password = passwd
      usr.password_confirmation = passwd
    end
  end
end
