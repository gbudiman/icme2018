module ContactHelper
  @contact = {
    general: {
      title: 'General Chairs',
      members: ['C.-C. Jay Kuo, USC, USA',
                'Truong Nguyen, UCSD, USA',
                'Wenjun Zeng, MSRA, China'],
      photos: ['Jay Kuo',
               'Truong Nguyen',
               'Wenjun Zeng']
    },
    program: {
      title: 'Program Chairs',
      members: ['Pamela Cosman, UCSD, USA',
                'Yap-Peng Tan, NTU, Singapore',
                'Sanghoon Lee, Yonsei U., Korea',
                'Min Chen, U. of Washington, Bothell, USA',
                'Mugen Peng, Beijing U of Posts & Telecom, China',
                'Junsong Yuan, NTU, Singapore'],
      photos: ['Pamela Cosman',
               'Yap-Peng Tan',
               'Sanghoon Lee',
               'Min Chen',
               'Mugen Peng',
               'Junsong Yuan']
    },
    plenary: {
      title: 'Plenary Chairs',
      members: ['John Apostolopoulos, Cisco, USA',
                'Haohong Wang, TCL, USA'],
      photos: ['John Apostolopoulos',
               'Hao Hong']
    },
    workshop: {
      title: 'Workshop Chairs',
      members: ['Mohan S. Kankanhalli, NUS, Singapore',
                'Kai Yang, Tongji University, China'],
      photos: ['Mohan Kankanhalli',
               'Kai Yang']
    },
    tutorial: {
      title: 'Tutorial Chairs',
      members: ['Jane Wang, UBC, Canada',
                'Vicky Zhao, Tsinghua, China'],
      photos: ['Jane Wang',
               'Vicky Zhao']
    },
    panel: {
      title: 'Panel Chairs',
      members: ['Jiebo Luo, U. of Rochester, USA',
                'Qi Tian, UT San Antonio, USA'],
      photos: ['Jiebo Luo',
               'Qi Tian']
    },
    special_session: {
      title: 'Special Session Chairs',
      members: ['Yonggang Wen, NTU, Singapore',
                'Chia-Wen Lin, NTHU, Taiwan'],
      photos: ['Yonggang Wen',
               'Chia-Wen Lin']
    },
    demo_expo: {
      title: 'Demo/Expo Chairs',
      members: ['Michel Sarkis, Qualcomm, USA',
                'Heather Yu, Huawei, USA'],
      photos: ['Michael Sarkis',
               nil]
    },
    grand_challenge: {
      title: 'Grand Challenges Chair',
      members: ['Vasudev Bhaskaran, Qualcomm, USA',
                'Lei Zhang, MSR, USA'],
      photos: [nil,
               'Lei Zhang']
    },
    industrial_program: {
      title: 'Industrial Program Chairs',
      members: ['Khaled El-Maleh, Qualcomm, USA',
                'Yan Ye, InterDigital, USA'],
      photos: ['Khaled El-Maleh',
               'Yan Ye']
    },
    student_program: {
      title: 'Student Program Chair',
      members: ['Prasad Calyam, U. of Missouri, USA'],
      photos: ['Prasad Calyam']
    },
    finance: {
      title: 'Finance Chair',
      members: ['Yan Sun, U. of Rhode Island, USA'],
      photos: ['Yan Sun']
    },
    publication: {
      title: 'Publication Chair',
      members: ['Alessandro Piva, U. of Florence, Italy'],
      photos: ['Alessandro Piva']
    },
    publicity: {
      title: 'Publicity Chairs',
      members: ['Panayiotis Georgiou, USC, USA',
                'William Grosky, U. of Michigan, USA',
                'Mark Liao, Acad. Sinica, Taiwan',
                'Liang Zhou, Nanjing U. of Posts & Telecommunication, China'],
      photos: ['Panayiotis Georgiou', 
               'William Grosky', 
               'Mark Liao',
               'Liang Zhou']
    },
    registration: {
      title: 'Registration Chair',
      members: ['Yusuf Ozturk, SDSU, USA'],
      photos: ['Yusuf Ozturk']
    },
    local_event: {
      title: 'Local/Event Chair',
      members: ['Sunil Kumar, SDSU, USA'],
      photos: ['Sunil Kumar']
    },
    # industrial_advisory: {
    #   title: 'Industrial Advisory Board',
    #   members: ['Kevin Jou',
    #             'Ton Kalker',
    #             'Chang Yeong Kim',
    #             'Haizhou Li',
    #             'Wei-Ying Ma',
    #             'John Smith',
    #             'Raj Talluri']
    # }
  }

  def self.get_contact spec: nil
    if spec
      return @contact[spec]
    end

    return @contact
  end
end