class CompaniesController < ApplicationController
  def new
    @company = current_user.build_company
  end

  def edit
  end

  def create
    @company = current_user.build_company(company_params)
    if @company.save
      flash[:notice] = 'Empresa cadastrada com sucesso.'
      redirect_to root_path
    else
      flash[:error] = 'Erro ao cadastrar a empresa.'
      render :new
    end
  end

  def update
  end

  private

  def company_params
    params.require(:company).permit(:name, :url, :logo)
  end

end
