json.array!(@resumes) do |resume|
  json.extract! resume, :id, :title
  json.url resume_url(resume, format: :json)
end
