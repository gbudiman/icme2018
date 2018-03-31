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
	@@registereds = nil

	def self.get key
		if @@lut == nil then Visa.preprocess end
		if @@registereds == nil then Visa.slurp_cvent_data end

		if @@lut[key.downcase]
			if @@registereds[key.downcase]
				return {
					status: :ok,
					value: @@lut[key.downcase]
				}
			else
				return { status: :not_registered }
			end
		else
			return { status: :not_attending }
		end
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

	def self.slurp_cvent_data
		csv = IO.read(Rails.root.join('app', 'models', 'cvent.csv')).split(/\n/)
		@@registereds = {}

		csv.each do |ks|
			k = ks.split(/\,/)
			s = "#{k[0]} #{k[1]}".gsub(/\"/, '').downcase

			@@registereds[s] = true
		end
	end

	def self.get_emails
		email_io = IO.read(Rails.root.join('app', 'models', 'emails.txt')).split(/\n/)
		emails = {}

		email_io.each do |row|
			row.split(/\;/).map do |x| 
				emails[x.strip] = true
			end
		end

		IO.write(Rails.root.join('app', 'models', 'email_unrolled.txt'), emails.keys.join("\n"))
	end
end