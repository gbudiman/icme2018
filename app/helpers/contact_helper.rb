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
      members: ['Mohan Kankanhalli, NUS, Singapore',
                'Kai Yang, Tongji University, China'],
      photos: ['Mohan Kankanhalli',
               'Kai Yang'],
      emails: ['mohan@comp.nus.edu.sg',
               'kaiyang@tongji.edu.cn']
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
               'Chia-Wen Lin'],
      emails: ['ygwen@ntu.edu.sg',
               'cwlin@ee.nthu.edu.tw']
    },
    demo_expo: {
      title: 'Demo/Expo Chairs',
      members: ['Liangping Ma, InterDigital, USA',
                'Michel Sarkis, Qualcomm, USA',
                'Heather Yu, Huawei, USA'],
      photos: ['Liangping Ma',
               'Michel Sarkis',
               'Heather Yu'],
      emails: [nil,
               'msarkis@qti.qualcomm.com',
               nil]
    },
    grand_challenge: {
      title: 'Grand Challenges Chair',
      members: ['Vasudev Bhaskaran, Qualcomm, USA',
                'Lei Zhang, MSR, USA'],
      photos: ['Vasudev Bhaskaran',
               'Lei Zhang'],
      emails: ['vasudevb@qti.qualcomm.com',
               'leizhang@microsoft.com']
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
    specsess_bda: {
      title: '',
      members: ['Jenq-Neng Hwang, University of Washington',
                'Caili Guo, Beijing Univeristy of Posts and Telecommunication'],
      emails: ['hwang@uw.edu',
               'guocaili@bupt.edu.cn']    
    },
    specsess_mec: {
      members: ['Lifeng Sun, Tsinghua University',
                'Jianwei Huang, Chinese University of Hong Kong'],
      emails: ['sunlf@tsinghua.edu.cn',
               'jwhuang@ie.cuhk.edu.hk']
    },
    specsess_haa: {
      members: ['Jiaying Liu, Peking University',
                'Xiaoyan Sun, Microsoft Research Asia'],
      emails: ['liujiaying@pku.edu.cn',
               'xysun@microsoft.com']
    },
    specsess_pcc: {
      members: ['Zhu Li, Univ of Missouri, Kansas',
                'Euee S. Jang, Hanyang University, Seoul, Korea',
                'Rufael Mekuria, Unified Streaming, Netherland',
                'Gary Li, Beijing University Shenzhen Grad School, China'],
      emails: ['lizhu@ukmc.edu',
               'esjang@hanyang.ac.kr',
               'rufael@united-streaming.com',
               'gli@pkusz.edu.cn']
    },
    specsess_lbo: {
      members: ['Han Hu, Nanyang Technological University',
                'Nikolaos Thomos, University of Essex, UK',
                'Kenji Kanai, Waseda University, Japan'],
      emails: ['hhu@ntu.edu.sg',
               'nthomos@essex.ac.uk',
               'k.kanai@aoni.waseda.jp']
    },
    specsess_dml: {
      members: ['Jiwen Lu, Tsinghua University',
                'Xiuzhuang Zhou, Beijing University of Posts and Telecommunication',
                'Nikolaos Boulgouris, Brunel University, London'],
      emails: ['lujiwen@tsinghua.edu.cn',
               'xiuzhuang.zhou@cnu.edu.cn',
               'nikolaos.boulgouris@brunel.ac.uk']
    }
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