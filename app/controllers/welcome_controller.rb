class WelcomeController < ApplicationController
  def admin
  end

  def index
    @themes = Theme.all
  end

end
