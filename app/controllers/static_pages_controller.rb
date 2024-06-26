class StaticPagesController < ApplicationController
  def about
    @company_name = "Nome da sua Empresa"
    @company_description = "Uma breve descrição sobre a sua empresa."
    @company_history = "História da empresa."
    @company_mission = "Missão da empresa."
    @company_vision = "Visão da empresa."
  end
end
