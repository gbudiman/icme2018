class Schedule < ApplicationRecord
	def self.parse_csv path:
		require 'csv'

		file = Rails.root.join('db', path).to_s
		j = CSV.parse(IO.read(file))
		j.each_with_index do |row, ri|
			row.each_with_index do |cell, ci|
				if cell
					j[ri][ci] = cell.gsub("\n", '<br />')
				end
			end
		end

		return j
	end
end
