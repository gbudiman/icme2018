module DateHelper
  @date = {
    special_session:    { title: 'Special Session', 
                          proposal: 'October 2, 2017', 
                          notification: 'October 16, 2017',
                          notified: true},
    workshop_proposal:  { title: 'Workshop', 
                          proposal: 'October 23, 2017', 
                          notification: 'November 6, 2017',
                          notified: true},
    panel:              { title: 'Panel', 
                          proposal: 'September 25, 2017', 
                          notification: 'October 2, 2017'},
    tutorial:           { title: 'Tutorial', 
                          proposal: 'September 25, 2017', 
                          notification: 'October 2, 2017',
                          notified: true},
    grand_challenge:    { title: 'Grand Challenge',
                          proposal: 'October 15, 2017',
                          notification: 'November 15, 2017' },
    grand_challenge_suggested_winner_paper: 
                        { title: 'Grand Challenge Winner Paper',
                          proposal: 'March 19, 2018',
                          type: :nopropose },
    grand_challenge_suggested_acceptance: 
                        { title: 'Grand Challenge Acceptance',
                          notification: 'April 23, 2018',
                          type: :nosubmission,
                          defix: :noacceptance },
    grand_challenge_suggested_camera_ready_paper: 
                        { title: 'Grand Challenge Camera Ready Paper',
                          proposal: 'May 11, 2018',
                          type: :nopropose },
    regular_abstract:   { title: 'Regular Paper Abstract', 
                          proposal: 'November 24, 2017',
                          type: :nopropose,
                          extended: 'December 15, 2017'},
    regular_abstract_ext: { title: 'Regular Paper Abstract (Extended)',
                          proposal: 'December 15, 2017',
                          type: :nopropose},
    regular_paper:      { title: 'Regular Paper', 
                          proposal: 'December 1, 2017', 
                          notification: 'March 12, 2018',
                          type: :nopropose,
                          extended: 'December 15, 2017'},
    regular_paper_ext:  { title: 'Regular Paper (Extended)',
                          proposal: 'December 15, 2017',
                          type: :nopropose},
    workshop_paper:     { title: 'Workshop Paper', 
                          proposal: 'March 19, 2018', 
                          notification: 'April 23, 2018',
                          type: :nopropose},
    expo_demo_reg:      { title: 'Expo/Demo Registration', 
                          proposal: 'May 31, 2018',
                          type: :nopropose},
    demo_paper:         { title: 'Demo Paper',
                          proposal: 'March 19, 2018',
                          notification: 'April 23, 2018',
                          type: :nopropose },
    camera_regular:     { title: 'Camera-Ready Regular Paper', 
                          proposal: 'April 13, 2018',
                          type: :nopropose},
    camera_workshop:    { title: 'Camera-Ready Workshop Paper', 
                          proposal: 'May 11, 2018',
                          type: :nopropose},
    camera_demo:        { title: 'Camera-Ready Demo Paper', 
                          proposal: 'May 11, 2018',
                          type: :nopropose},
    t_mm:               { title: 'T-MM Presentation',
                          proposal: 'May 11, 2018',
                          type: :nopropose},
    # industry_forum:     { title: 'Industry Forum',
    #                       proposal: 'October 23, 2017'},
    industry_track:     { title: 'Industry Track Paper',
                          proposal: 'March 19, 2018',
                          notification: 'April 23, 2018',
                          type: :nopropose},
    industry_track_cr:  { title: 'Camera-Ready Industry Track Paper',
                          proposal: 'May 11, 2018',
                          type: :nopropose},
    author_rebuttal_start:{ title: 'Author Rebuttal Begins',
                          proposal: 'Feb 12, 2018',
                          type: :nopropose,
                          is_rebuttal: true},
    author_rebuttal_end: {title: 'Author Rebuttal Ends',
                          proposal: 'Feb 19, 2018',
                          type: :nopropose,
                          is_rebuttal: true}
  }

  def self.get_sorted()
    s = Array.new

    marked_date = @date.dup
    marked_date[:is_today] = { proposal: Time.now.strftime('%B %d, %Y') }

    marked_date.each do |k, v|
      #s[Date.parse(v[:proposal])] = v[:title] + ' Proposoal';

      if k == :is_today
        s.push({
          date: Date.parse(v[:proposal]),
          title: 'Today',
          affix: :highlight_today

        })
      elsif v[:proposal]
        s.push({
          date: Date.parse(v[:proposal]),
          title: v[:title] + ((v[:type] || :nil) == :nopropose ? '' : ' Proposal'),
          affix: v[:is_rebuttal] ? nil : :due,
          extended: v[:extended] ? Date.parse(v[:extended]) : nil
        })
      end

      if v[:notification]
        #s[Date.parse(v[:notification])] = v[:title] + ' Notification';
        s.push({
          date: Date.parse(v[:notification]),
          title: v[:title],
          affix: :notification,
          notified: v[:notified]
        })
      end
    end
    
    return s.sort_by{|k| k[:date]}
  end

  def self.get spec:
    return @date[spec]
  end

  def self.get_deadline spec: 
    return @date[spec][:proposal]
  end

  def self.get_upcoming_deadline
    date_today = Time.now
    upcoming = []
    limit = 2

    DateHelper.get_sorted.each do |s|
      if s[:date] >= date_today and s[:extended] == nil
        if upcoming.length < limit or upcoming[-1][:date] == s[:date]
          upcoming.push s
        end
      end
    end

    if upcoming.length > 0
      upcoming.each do |u|
        u[:splash_title] = u[:title]
        u[:splash_date] = Date.parse(u[:date].to_s).strftime('%B %d, %Y')

        if u[:extended]
          u[:splash_date] = u[:splash_date] + 
                            " (Extended #{Date.parse(u[:extended].to_s).strftime('%B %d, %Y')})"
        end

        case u[:affix]
        when :due
          u[:splash_title] = u[:splash_title] + ' Submission Deadline'
        when :notification
          u[:splash_title] = u[:splash_title] + ' Notification'
        end
      end
    else
      upcoming.append({
        splash_title: 'No upcoming deadline',
        splash_date: ''
      })
    end

    return upcoming
  end
end 