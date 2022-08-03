
require_relative "sum_of_intervals.rb"
require 'test/unit'


class TestSum < Test::Unit::TestCase

	def test_interval_length
		interval_inputs = [
			[-1, 1],
			[1, 1],
			[0, 6]
		]
		interval_expected = [
			2,
			0,
			6
		]

		(0...3).each do |index| 
			interval_len = interval_length(interval_inputs[index])
			assert_equal interval_expected[index], interval_len
		end
	end

end


