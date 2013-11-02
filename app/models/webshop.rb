# == Schema Information
#
# Table name: webshops
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Webshop < ActiveRecord::Base
end
