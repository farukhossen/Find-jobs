class Job < ActiveRecord::Base
  has_many :job_descriptions
  has_many :additional_requirements
  belongs_to :subcategory
  accepts_nested_attributes_for :additional_requirements, :job_descriptions, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true
end
