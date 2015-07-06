class Category < ActiveRecord::Base
  default_scope { order(:rank) }
end
