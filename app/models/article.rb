class Article < ActiveRecord::Base
  belongs_to :category
  include Commentable
  include MarkdownBodyable

  validates :title, presence: true
  validates :category, presence: true
end
