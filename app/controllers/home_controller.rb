class HomeController < ApplicationController
  def index
    redirect_to new_user_session_path unless user_signed_in?
  end
  def borrower_index

  end
end
