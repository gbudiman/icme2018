module SponsorHelper
  @@sponsors = {
    platinum: {
      title: 'Platinum Sponsors',
      logos: ['logos/acer', 'logos/adobe', 'logos/interdigital', 'logos/qualcomm']
    },
    silver: {
      title: 'Silver Sponsors',
      logos: ['logos/mediatek', 'logos/mitsubishi'],
    },
    bronze: {
      title: 'Bronze Sponsors',
      logos: ['logos/lenovo'],
    },
    orgs: {
      title: 'Organizational Sponsors',
      logos: ['IEEE', 'IEEE_CS', 'CAS', 'ComSoc', 'IEEE_SPS', 'logos/apsipa']
    },
    pot: {
      title: 'Other Potential Sponsors',
      logos: ['logos/huawei', 'logos/microsoft']
    }
  }

  def self.get_sponsors
    return @@sponsors
  end
end