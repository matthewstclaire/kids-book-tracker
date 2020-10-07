class Post < ActiveRecord::Base
belongs_to :user

validates :title, :description, :genre, :author, :review, presence: true
end
