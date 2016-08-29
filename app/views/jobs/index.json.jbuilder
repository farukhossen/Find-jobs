json.array!(@jobs) do |job|
  json.extract! job, :id, :post, :company, :no_of_vacancies, :job_nature, :eduation_requirements, :job_location, :salary_range
  json.url job_url(job, format: :json)
end
