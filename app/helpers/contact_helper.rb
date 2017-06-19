module ContactHelper
  @contact = {
    general: {
      title: 'General Chairs',
      members: ['C.-C. Jay Kuo, USC, USA',
                'Truong Nguyen, UCSD, USA',
                'Wenjun Zeng, MSRA, China']
    },
    program: {
      title: 'Program Chairs',
      members: ['Pamela Cosman, UCSD, USA',
                'Yap-Peng Tan, NTU, Singapore',
                'Sanghoon Lee, Yonsei U., Korea',
                'Min Chen, U. of Washington, Bothell, USA',
                'Mugen Peng, Beijing U of Posts & Telecom, China',
                'Junsong Yuan, NTU, Singapore']
    },
    plenary: {
      title: 'Plenary Chairs',
      members: ['John Apostolopoulos, Cisco, USA',
                'Haohong Wang, TCL, USA']
    },
    workshop: {
      title: 'Workshop Chairs',
      members: ['Mohan S. Kankanhalli, NUS, Singapore',
                'Kai Yang, Bell Labs, USA']
    },
    tutorial: {
      title: 'Tutorial Chairs',
      members: ['Jane Wang, UBC, Canada',
                'Vicky Zhao, Tsinghua, China']
    },
    panel: {
      title: 'Panel Chairs',
      members: ['Jiebo Luo, U. of Rochester, USA',
                'Qi Tian, UT San Antonio, USA']
    },
    special_session: {
      title: 'Special Session Chairs',
      members: ['Yonggang Wen, NTU, Singapore',
                'Chia-Wen Lin, NTHU, Taiwan']
    },
    demo_expo: {
      title: 'Demo/Expo Chairs',
      members: ['Michel Sarkis, Qualcomm, USA',
                'Heather Yu, Huawei, USA']
    },
    grand_challenge: {
      title: 'Grand Challenges Chair',
      members: ['Vasudev Bhaskaran, Qualcomm, USA']
    },
    industrial_program: {
      title: 'Industrial Program Chairs',
      members: ['Khaled El-Maleh, Qualcomm, USA',
                'Felix Fernandes, Apple, USA']
    },
    student_program: {
      title: 'Student Program Chair',
      members: ['Prasad Calyam, U. of Missouri, USA']
    },
    finance: {
      title: 'Finance Chair',
      members: ['Yan Sun, U. of Rhode Island, USA']
    },
    publication: {
      title: 'Publication Chair',
      members: ['Alessandro Piva, U. of Florence, Italy']
    },
    publication: {
      title: 'Publicity Chairs',
      members: ['Panayiotis Georgiou, USC, USA',
                'William Grosky, U. of Michigan, USA',
                'Mark Liao, Acad. Sinica, Taiwan',
                'Liang Zhou, Nanjing U. of Posts & Telecommunication, China']
    },
    registration: {
      title: 'Registration Chair',
      members: ['Yusuf Ozturk, SDSU, USA']
    },
    local_event: {
      title: 'Local/Event Chair',
      members: ['Sunil Kumar, SDSU, USA']
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