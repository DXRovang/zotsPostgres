class EmailValidator < ActiveModel::Validator 
  def validate(record)
    unless record.email.match?(/[a-zA-Z0-9]+@[a-zA-Z]+[.](com)/)
      record.errors[:email] << "not valid, please check spelling."
    end
  end
end