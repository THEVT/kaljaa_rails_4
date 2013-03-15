# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  wall       :integer
#  ts         :integer
#  s1         :string(255)
#  s2         :string(255)
#  s3         :string(255)
#  s4         :string(255)
#  s5         :string(255)
#  s6         :string(255)
#  s7         :string(255)
#  s8         :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Profile < ActiveRecord::Base
  attr_accessible :s1, :s2, :s3, :s4, :s5, :s5, :s6, :s7, :s8, :ts, :wall, :city
end
