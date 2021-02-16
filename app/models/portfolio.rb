class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.react
    where(subtitle: 'React')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '300', width: '200')
    self.thumb_image ||= Placeholder.image_generator(height: '150', width: '100')
  end
end
