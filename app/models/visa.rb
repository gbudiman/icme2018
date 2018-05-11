class String
	def latinize
		return self.gsub(/[^A-Za-z ]/, '').gsub(/\s+/, ' ')
	end
end

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
	@@r_original_name = nil
	@@paper_authors = nil
	@@paper_emails = nil

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
			if @@registereds[key.downcase]
				return { 
					status: :guest,
					value: { name: @@r_original_name[key.downcase] }
				}
			end

			return { status: :not_attending }
		end
	end

	def self.preprocess
		@@paper_authors = {}
		@@paper_emails = {}
		papers = IO.read(Rails.root.join('app', 'models', 'papers.txt')).split(/\n/)
		emails = IO.read(Rails.root.join('app', 'models', 'emails.txt')).split(/\n/)
		author_groups = IO.read(Rails.root.join('app', 'models', 'authors.txt')).split(/\n/)

		vlut = {}
		authors = []

		author_groups.each do |group|
			authors.append(group.split(/\;/).map do |x| 
				x.split(/\,/)[0].strip.gsub(/\*/, '')
			end)
		end


		authors.each_with_index do |author_groups, i|
			paper = papers[i]
			@@paper_authors[paper] = []
			@@paper_emails[paper] = emails[i]
			author_groups.each do |author|
				@@paper_authors[paper].push(author.unicode_normalize.latinize.downcase)
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
		@@r_original_name = {}

		csv.each do |ks|
			k = ks.split(/\,/)
			s = "#{k[0]} #{k[1]}".gsub(/\"/, '')

			@@registereds[s.downcase] = true
			@@r_original_name[s.downcase] = s
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


	def self.get_unregistered_papers
		preprocess
		slurp_cvent_data
		
		csv_papers = []
		csv_emails = []
		regs = {}
		reg_count = 0
		noreg_count = 0
		@@registereds.each do |k, v|
			regs[k.latinize] = true
		end

		@@paper_authors.each do |paper, authors|
			
			has_one_register = false
			buffer = []
			authors.each do |author|
				splits = author.split(/\s+/)

				if splits.length == 2
					alt = "#{splits[1]} #{splits[0]}"
					if regs[alt] != nil
						has_one_register = true
					end
				end

				if regs[author] != nil
					has_one_register = true
				end

				buffer.push "> [#{regs[author] != nil ? 'T' : 'F'}] #{author}"
			end

			if not has_one_register
				#puts paper
				#puts buffer.join("\n")
				noreg_count = noreg_count + 1
				#puts @@paper_emails[paper]
				#csv.push([paper, @@paper_emails[paper]])
				csv_papers.push(paper)
				csv_emails.push(@@paper_emails[paper])
			else
				reg_count = reg_count + 1
			end
		end

		ap reg_count
		ap noreg_count
		puts csv_papers.join("\n")
		puts csv_emails.join("\n")
		return nil
	end
end