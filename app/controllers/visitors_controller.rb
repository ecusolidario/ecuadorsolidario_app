class VisitorsController < ApplicationController
  def index
    @casos = Caso.all
  end
end
