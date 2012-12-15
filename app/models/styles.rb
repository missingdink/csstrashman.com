class Styles < ActiveRecord::Base
  attr_accessible :css, :sass, :url

  validates :url, presence: true

  def calculate_css
    css = `/app/vendor/phantomjs/bin/phantomjs /app/lib/css-ratiocinator/ratiocinate.js "#{url}"`
    save
  end
end
