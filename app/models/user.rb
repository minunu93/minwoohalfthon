class User < ActiveRecord::Base
    has_attached_file :profileimage, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :profileimage, content_type: /\Aimage\/.*\z/
    has_many :dinings
    has_many :comments
end
