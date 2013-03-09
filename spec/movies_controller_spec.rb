require 'simplecov'
SimpleCov.start 'rails'

require 'spec_helper'

describe MoviesController, :type => :controller do
	describe 'route exists' do
		it 'returns http success' do
			get 'same_director', :id => 1
			response.should be_success
		end
	end
	describe 'calls movie model method' do
		Movie.should_receive(:same_director)
		get 'same_director', :id => 1
	end
	describe 'makes movie information available in the view'
		fake_results = [mock('Movie1'), mock('Movie2')]
		Movie.should_receive(:same_director).and_return(fake_results)
		get 'same_director', :id => 1
		assigns(:movies).should == fake_results
	end

end

