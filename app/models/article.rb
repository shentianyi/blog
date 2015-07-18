class Article < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  include Commentable
  include MarkdownBodyable

  validates :title, presence: true
  validates :category, presence: true
end
