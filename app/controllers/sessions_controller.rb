# -*- encoding : utf-8 -*-

class SessionsController < ApplicationController

  skip_before_filter :auth!, only: [:new, :create]

  def new
  end

  def create
    client = Client.find_by_email(params[:email])
    if client && client.authenticate(params[:password])
      session[:client_id] = client.id
      redirect_to client_accounts_path(client), notice: 'Witamy :)'
    else
      flash.now.alert = 'Niestety :('
      render action: 'new'
    end
  end

  def destroy
    session[:client_id] = nil
    redirect_to root_path, notice: 'Do zobaczenia...'
  end

end
