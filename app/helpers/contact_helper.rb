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
      not_oc: true,
      title: '',
      members: ['Jenq-Neng Hwang, University of Washington',
                'Caili Guo, Beijing Univeristy of Posts and Telecommunication'],
      emails: ['hwang@uw.edu',
               'guocaili@bupt.edu.cn']    ,
      photos: ['Jenq-Neng Hwang', 'Caili Guo']
    },
    specsess_mec: {
      not_oc: true,
      members: ['Lifeng Sun, Tsinghua University',
                'Jianwei Huang, Chinese University of Hong Kong'],
      emails: ['sunlf@tsinghua.edu.cn',
               'jwhuang@ie.cuhk.edu.hk'],
      photos: ['Lifeng Sun', 'Jianwei Huang']
    },
    specsess_haa: {
      not_oc: true,
      members: ['Jiaying Liu, Peking University',
                'Xiaoyan Sun, Microsoft Research Asia'],
      emails: ['liujiaying@pku.edu.cn',
               'xysun@microsoft.com'],
      photos: ['Jiaying Liu', 'Xiaoyan Sun']
    },
    specsess_pcc: {
      not_oc: true,
      members: ['Zhu Li, Univ of Missouri, Kansas',
                'Euee S. Jang, Hanyang University, Seoul, Korea',
                'Rufael Mekuria, Unified Streaming, Netherland',
                'Gary Li, Beijing University Shenzhen Grad School, China'],
      emails: ['lizhu@ukmc.edu',
               'esjang@hanyang.ac.kr',
               'rufael@united-streaming.com',
               'gli@pkusz.edu.cn'],
      photos: ['Zhu Li', 'Euee S Jang', 'Rufael Mekuria', 'Gary Li']
    },
    specsess_lbo: {
      not_oc: true,
      members: ['Han Hu, Nanyang Technological University',
                'Nikolaos Thomas, University of Essex, UK',
                'Kenji Kanai, Waseda University, Japan'],
      emails: ['hhu@ntu.edu.sg',
               'nthomos@essex.ac.uk',
               'k.kanai@aoni.waseda.jp'],
      photos: ['Han Hu', 'Nikolaos Thomas', 'Kenji Kanai']
    },
    specsess_dml: {
      not_oc: true,
      members: ['Jiwen Lu, Tsinghua University',
                'Xiuzhuang Zhou, Beijing University of Posts and Telecommunication',
                'Nikolaos Boulgouris, Brunel University, London'],
      emails: ['lujiwen@tsinghua.edu.cn',
               'xiuzhuang.zhou@cnu.edu.cn',
               'nikolaos.boulgouris@brunel.ac.uk'],
      photos: ['Jiwen Lu', 'Xiuzhuang Zhou', 'Nikolaos Boulgouris']
    },
    workshop_htm: {
      not_oc: true,
      members: ['Ioan Tabus, Finland',
                'Zahir Alpaslan, USA',
                'Touradj Ebrahimi, Switzerland'],
      photos: ['Ioan Tabus', 'Zahir Alpaslan', 'Touradj Ebrahimi']
    },
    workshop_mast: {
      not_oc: true,
      members: ['Naveen Kumar', 'Tanaya Guha', 'Krishna Somandepalli', 'Shri Narayanan'],
      photos: ['Naveen Kumar', 'Tanaya Guha', 'Krishna Somandepalli', 'Shri Narayanan']
    },
    workshop_msts: {
      not_oc: true,
      members: ['M. Shamim Hossain', 'Stefan Goebel', 'Majdi Rawasdeh']
    },
    workshop_mmc: {
      not_oc: true,
      members: ['Wen-Huang Cheng', 'Kai-Lung Hua', 'Klaus Schoeffmann', 'Tian Gan', 'Christian von der Weth']
    },
    workshop_mlaim: {
      not_oc: true,
      members: ['Yanjia Sun, PhD, Principle Data Scientist, ADP, LLC', 
                'Sijia Liu, Postdoctoral Research Fellow, Department of Electrical Engineering and Computer Science, University of Michigan, Ann Arbor, USA', 
                'Pin-Yu Chen, PhD, Research Staff Member, AI Foundations Group, IBM T. J. Watson Research Center'],
      emails: ['yanjia.sun@adp.com', 'lsjxjtu@umich.edu', 'pin-yu.chen@ibm.com'],
      photos: ['Yanjia Sun', 'Sijia Liu', 'Pin-Yu Chen']
    },
    workshop_pim: {
      not_oc: true,
      members: ['Pradeep Atrey, State University of New York, Albany, USA', 
                'Sen-cheng \'Samson\' Cheung, Univeristy of Kentucky, USA', 
                'Frederic Dufaux, CNRS and Telecom ParisTech, France', 
                'Andrea Cavallaro, Queen Mary University of London, UK'],
      photos: ['Pradeep Atrey', 'Samson Cheung', 'Frederic Dufaux', 'Andrea Cavallaro']
    },
    workshop_fim_hgc: {
      not_oc: true,
      members: ['Thomas S. Huang, University of Illinois at Urbana-Champaign, USA'],
      photos: ['Thomas Huang']
    },
    workshop_fim_gc: {
      not_oc: true,
      members: ['Y. Raymond Fu, Northeastern University, Boston, USA'],
      photos: ['Raymond Fu']
    },
    workshop_fim_pc: {
      not_oc: true,
      members: ['Joseph P. Robinson, Northeastern University, Boston, USA',
                'Ming Shao, University of Massachusetts Dartmouth, USA',
                'Siyu Xia, Southeast University, China'],
      emails: ['robinson.jo@husky.neu.edu',
               'mshao@umassd.edu',
               'xia081@gmail.com'],
      photos: ['Joseph Robinson', 'Ming Shao', 'Siyu Xia']
    },
    workshop_emsa: {
      not_oc: true,
      members: ['Philip Chen', 'Zhenzhong Chen', 'Chenwei Deng']
    },
    panel_a_moderator: {
      not_oc: true,
      members: ['Prof. Junsong Yuan, Nanyang Technological University']
    },
    panel_a_panelists: {
      not_oc: true,
      members: ['Mohan Kankanhalli, National University of Singapore',
                'Nicu Sebe, University of Trento',
                'Gang Wang, Research Director of Alibaba AI Lab',
                'Yi Yang, University of Technology Sydney',
                'Yuxin Peng, Peking University',
                'Jiashi Feng, National University of Singapore',
                'Jiebo Luo, University of Rochester']
    },
    panel_b_moderator: {
      not_oc: true,
      members: ['Dr. Liang Lin, Sensetime']
    },
    panel_b_panelists: {
      not_oc: true,
      members: ['Shuicheng Yan, National University of Singapore & VP/Director of Research at Qihu 360',
                'Changhu Wang, Research Director at Toutiao',
                'Liangliang Cao, Founder of Hello Vera',
                'Fatih Porikli, Chief Scientist at Huawei & Australia National University',
                'Cees Snoek, Director of QUVA Lab (joint research lab of Qualcomm and University of Amsterdam',
                'Xian-sheng Hua, Deputy Managing Director at iDST, Alibaba Group',
                'Tao Mei, Lead Researcher, Microsoft Research Asia']
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

    return @contact.select{ |k, v| v[:not_oc] == nil }
  end
end