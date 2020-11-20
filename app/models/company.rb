class Company < ApplicationRecord
  has_rich_text :description

  validates :email, format: {
    with:    /\A[^@\s]+@getmainstreet.com/,
    message: 'The email should be a valid email with getmainstreet domain.'
  }, if: -> { email.present? }
end
