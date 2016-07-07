class ClientsController < ApplicationController
  before_action :get_client, except: [:index, :create, :new]

  def index
    @clients = Client.all
    @current_client = Client.find_or_create_by(
      ip_address: request.remote_ip,
      user_agent: request.env["HTTP_USER_AGENT"],
      ssl: request.ssl?)
    @feelings = Feeling.all.map do |feeling|
      {
	awesome: feeling.awesome, so_so: feeling.so_so,
	creeped_out: feeling.creeped_out,
	morally_outraged: feeling.morally_outraged,
	hungry: feeling.hungry
      }
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    @client.update_attributes(client_params)
  end

  def show
  end

  def destroy
    @client.destroy
  end

  private
    def client_params
      params.require(:client).permit(:ip_address, :user_agent, :ssl)
    end

    def get_client
      @client = Client.find(params[:id])
    end
end
