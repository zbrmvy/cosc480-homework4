require 'simplecov'
SimpleCov.start 'rails'

require 'spec_helper'

describe Movie do
	describe '#same_director' do
		it 'should return movies with the same director' do
			test_movie = Movie.new(:director_name => 'Test Director')
			fake_movie1 = mock('Movie1')
			fake_movie1.stub(:director_name).and_return('Test Director')
			same_directors = test_movie.same_director
			same_directors.should include(fake_movie1)
		end
	end
end
