class Visa < ApplicationRecord
	# @@lut = {
	# 	'test test' => { name: 'Test Test', 
	# 		               paper_title: 'Test Paper 2018', 
	# 		               paper_date: 'Jun 1, 2018', 
	# 		               paper_time: '1:30PM', 
	# 		               authors: ['Friend 1', 'Friend 2'],
	# 		               confirmation: nil },
	# 	'test paid' => { name: 'Test Test', 
	# 		               paper_title: 'Test Paper 2018', 
	# 		               paper_date: 'Jun 1, 2018', 
	# 		               paper_time: '1:30PM', 
	# 		               authors: ['Friend 1', 'Friend 2'],
	# 		               confirmation: 3510 }
	# }
	@@lut = nil

	def self.get key
		if @@lut == nil then Visa.preprocess end
		return @@lut[key.downcase]
	end

	def self.preprocess
		papers = IO.read(Rails.root.join('app', 'models', 'papers.txt')).split(/\n/)
		author_groups = IO.read(Rails.root.join('app', 'models', 'authors.txt')).split(/\n/)

		vlut = {}
		#ap papers
		authors = []

		author_groups.each do |group|
			authors.append(group.split(/\;/).map do |x| 
				x.split(/\,/)[0].strip.gsub(/\*/, '')
			end)
		end

		authors.each_with_index do |author_groups, i|
			paper = papers[i]
			author_groups.each do |author|
				vlut[author.downcase] = { name: author,
				                          paper_title: paper,
				                          authors: author_groups.join(', ') }
			end
		end

		@@lut = vlut
	end

	def self.get_emails
		email_io = IO.read(Rails.root.join('app', 'models', 'emails.txt')).split(/\n/)
		emails = []

		email_io.each do |row|
			emails = emails + row.split(/\;/).map{ |x| x.strip }
		end

		IO.write(Rails.root.join('app', 'models', 'email_unrolled.txt'), emails.join("\n"))
	end
end