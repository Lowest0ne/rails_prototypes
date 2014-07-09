class Slide < ActiveRecord::Base
  validates_presence_of :title

  belongs_to :previous, class_name: 'Slide', foreign_key: :previous_slide_id
  belongs_to :next, class_name: 'Slide' , foreign_key: :next_slide_id

end
