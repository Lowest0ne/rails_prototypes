require 'rails_helper'

RSpec.describe CurrentSlide, :type => :model do

  it { should validate_presence_of( :slide_id ) }
end
