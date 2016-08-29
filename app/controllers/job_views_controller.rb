class JobViewsController < ApplicationController
  before_action :get_subcategory, only: [:show]

  def show
    @jobs = @subcategory.jobs.page(params[:page]).per_page(3)
  end

  def job_details
    @job = Job.find(params[:id])
  end

  private
  def get_subcategory
    @subcategory = Subcategory.find(params[:id])
  end
end
