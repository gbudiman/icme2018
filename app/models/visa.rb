class Visa < ApplicationRecord
	@@lut = {
		'test test' => { name: 'Test Test', 
			               paper_title: 'Test Paper 2018', 
			               paper_date: 'Jun 1, 2018', 
			               paper_time: '1:30PM', 
			               authors: ['Friend 1', 'Friend 2']},
	}

	def self.get key
		return @@lut[key]
	end
end