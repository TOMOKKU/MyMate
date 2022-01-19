class ApplicationController < ActionController::Base
  before_action :set_current_user
  before_action :ensure_correct_user,{only:[:edit,:update]}

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  before_action :authenticate_user,{only: [:edit, :update]}

  def authenticate_user
    if @current_user == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/login")
    end
  end

  def forbid_login_user
    if @current_user
      flash[:notice]="既にログインしています"
      redirect_to("/posts/index")
    end
  end

  def ensure_correct_user
    if @current_user.id != params[:id].to_i
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
    end
  end
end
