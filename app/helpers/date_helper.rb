module DateHelper
  @date = {
    special_session: { title: 'Special Session', proposal: 'October 2, 2017', notification: 'October 16, 2017'},
    workshop_proposal: { title: 'Workshop Proposal', proposal: 'October 23, 2017', notification: 'November 6, 2017'},
    panel: { title: 'Panel', proposal: 'October 23, 2017', notification: 'November 6, 2017'},
    tutorial: { title: 'Tutorial', proposal: 'October 23, 2017', notification: 'November 6, 2017'},
    regular_abstract: { title: 'Regular Paper Abstract', proposal: 'November 24, 2017'},
    regular_paper: { title: 'Regular Paper', proposal: 'December 1, 2017', notification: 'March 12, 2018'},
    workshop_paper: { title: 'Workshop Paper', proposal: 'March 19, 2018', notification: 'April 23, 2018'},
    demo_paper: { title: 'Demo Paper', proposal: 'March 19, 2018', notification: 'April 23, 2018'},
    camera_regular: { title: 'Camera-Ready Regular Paper', proposal: 'April 13, 2018'},
    camera_workshop: { title: 'Camera-Ready Workshop ', proposal: 'May 11, 2018'},
    camera_demo: { title: 'Camera-Ready Demo Paper', proposal: 'May 11, 2018'}
  }

  def self.get_sorted()
    s = Array.new

    @date.each do |k, v|
      #s[Date.parse(v[:proposal])] = v[:title] + ' Proposoal';
      s.push({
        date: Date.parse(v[:proposal]),
        title: v[:title] + ' Proposal'
      })
      if v[:notification]
        #s[Date.parse(v[:notification])] = v[:title] + ' Notification';
        s.push({
          date: Date.parse(v[:notification]),
          title: v[:title] + ' Notification'
        })
      end
    end
    
    return s.sort_by{|k| k[:date]}
  end

  def self.get spec:
    return @date[spec]
  end
end