class PagesController < ApplicationController
  def index
  	@carousels = {
  		'Henrik Christensen' => ['IEEE/AAAS Fellow', 'Qualcomm Chancellor\'s Chair, UC San Diego, USA', 'Keynote Speaker'],
  		'Gomila Cristina' => ['CTO, Technicolor, France', 'Keynote Speaker'],
  		'Shrikanth Narayanan' => ['IEEE/AAAS/ASA/ISCA/NAI Fellow', 'Niki & C. L. Max Nikias Chair, University of Southern California, USA', 'Keynote Speaker'],
  		'Ali Begen' => ['Tutorial Speaker', 'Delivering Traditional and Omnidirectional Media'],
  		'Liangping Ma' => ['Tutorial Speaker', 'Delivering Traditional and Omnidirectional Media'],
  		'Christian Timmerer' => ['Tutorial Speaker', 'Delivering Traditional and Omnidirectional Media'],
  		'Kari Pulli' => ['Tutorial Speaker', 'Interactive Augmented Reality with Meta 2'],
  		'Charles Niu' => ['Tutorial Speaker', 'Interactive Augmented Reality with Meta 2'],
  		'Paulo Jansen' => ['Tutorial Speaker', 'Interactive Augmented Reality with Meta 2'],
  		'Jens-Rainer Ohm' => ['Tutorial Speaker', 'Interactive Augmented Reality with Meta 2'],
  		'Mathias Wien' => ['Tutorial Speaker', 'Interactive Augmented Reality with Meta 2'],
  		'Tao Mei' => ['Tutorial Speaker', 'Multimedia and Language: Bridging Multimedia and Natural Language with Deep Learning'],
  		'Jiebo Luo' => ['Tutorial Speaker', 'Multimedia and Language: Bridging Multimedia and Natural Language with Deep Learning']
  	}
    render 'index'
  end
end
