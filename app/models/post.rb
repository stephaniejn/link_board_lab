class Post < ActiveRecord::Base
  belongs_to :user

  validates :title,
    presence: true,
    length: { minimum: 10, maximum: 100}

  validates :link,
    presence: true,
    format: { with: URI::regexp(%w(http https))}

end
