class Resume < ActiveRecord::Base
  belongs_to :user
  has_many :employment_histories
  has_many :language_specializations
  has_many :references
  has_many :specializations
end
