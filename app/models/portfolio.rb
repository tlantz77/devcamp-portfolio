class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.react
    where(subtitle: 'React')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/300x200"
    self.thumb_image ||= "https://via.placeholder.com/150x100"
  end
end
