class CompaniesController < ApplicationController
  before_action :set_company, except: %i[index create new]

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def show; end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path, notice: 'The company has been saved successfully!'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @company.update(company_params)
      redirect_to company_path(@company), notice: 'The company has been updated successfully!'
    else
      render :edit
    end
  end

  def destroy
    if @company.destroy
      flash[:notice] = 'The company has been destroyed successfully!'
    else
      flash[:alert] = 'Error! unable to destroy the company at the moment!'
    end

    redirect_to companies_path
  end

  private

  def company_params
    params.require(:company).permit(
      :name,
      :legal_name,
      :description,
      :zip_code,
      :phone,
      :email,
      :owner_id,
      services: []
    )
  end

  def set_company
    @company = Company.find(params[:id])
  end
  
end
