class SessionsController < ApplicationController
  def new
  end

  def create
    name     = params[:session][:name]
    password = params[:session][:password]
    if login(name, password)
      flash[:success] = 'ログインに成功しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ログインに失敗しました。'
      render 'new'
    end
  end

  def destroy
    session[:user_id]=nil
    flash[:success]="ログアウトしました"
    redirect_to root_path
  end

  private

  def login(name , password)
    @user=User.find(params[:id])
    if @user && @user.authenticate(password)

      session[:user_id] = @user.id
      return true
    else
      return false
    end
  end

end
