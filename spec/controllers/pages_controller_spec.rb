require 'rails_helper'

describe PagesController do

  describe 'home' do

    before( :each ){ get :home }

    it { expect( response.status ).to eql 200 }

  end

end
