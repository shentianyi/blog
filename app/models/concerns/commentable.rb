module Commentable
  def self.included(klazz)
    klazz.class_eval do
      has_many :comments, as: :commentable
    end
  end
end