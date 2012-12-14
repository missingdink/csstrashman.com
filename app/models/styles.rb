class Styles < ActiveRecord::Base
  attr_accessible :css, :sass, :url

  validates :url, presence: true
end
