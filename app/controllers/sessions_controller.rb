class SessionsController < ApplicationController
  def new
    redirect_to '/auth/facebook'
  end

  def create
  end

  def destroy
  end
end
