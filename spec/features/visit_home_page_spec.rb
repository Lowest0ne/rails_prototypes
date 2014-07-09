require 'rails_helper'

describe 'visitin the home page' do

  before( :each ){ visit root_path }

  it { expect( find( 'h1' ) ).to have_content( 'Welcome to my prototypes!' ) }


end
