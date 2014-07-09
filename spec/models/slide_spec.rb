require 'rails_helper'

RSpec.describe Slide, :type => :model do

  it { should validate_presence_of( :content ) }

end
