class SocksController < ApplicationController
  def new
    @sock = Sock.new
  end

  def create
    @sock = Sock.new(sock_params)
    if @sock.save
      redirect_to socks_path, notice: "Successfully created socks."
    else
      redirect_to root_path, alert: "Something went wrong"
    end
  end

  def index
    @socks = Sock.all.limit(10)
  end

  private

  def sock_params
    params.require(:sock).permit(:brand, :style)
  end
end
