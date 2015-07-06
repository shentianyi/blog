class Article < ActiveRecord::Base
  belongs_to :category
  include Commentable
end
