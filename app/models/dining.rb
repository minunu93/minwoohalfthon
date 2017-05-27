class Dining < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "700x400>", thumb: "1400x800>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    belongs_to :user
    has_many :comments

end
