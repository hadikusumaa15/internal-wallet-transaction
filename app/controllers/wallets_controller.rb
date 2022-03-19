class WalletsController < ApplicationController
  before_action :authenticate_user!
  before_action :redirect_non_user
  before_action :set_wallet, only: %i[ show ]
  before_action :set_user_list, only: %i[ new create ]
  before_action :get_transactions, only: %i[ index ]

  # GET /wallets or /wallets.json
  def index
    
  end

  # GET /wallets/1 or /wallets/1.json
  def show
  end

  # GET /wallets/new
  def new
    @wallet = Wallet.new
  end

  # POST /wallets or /wallets.json
  def create
    @wallet = Wallet.new(wallet_params)
    @wallet.sender_user_id = current_user.id

    respond_to do |format|
      if @wallet.save
        format.html { redirect_to wallet_url(@wallet), notice: "Wallet was successfully created." }
        format.json { render :show, status: :created, location: @wallet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  def sign_out_user
    sign_out current_user

    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wallet
      @wallet = current_user.credits.find_by(id: params[:id])
      @wallet = current_user.debits.find_by(id: params[:id]) if @wallet.blank?
    end

    # Only allow a list of trusted parameters through.
    def wallet_params
      params.require(:wallet).permit(:amount, :remark, :receiver_user_id, :sender_user_id)
    end

    def set_user_list
      @users = User.where.not(id: current_user.id).order(:email)
    end

    def get_transactions
      @credits = current_user.credits.order(:created_at)
      @debits = current_user.debits.order(:created_at)
      @balance = current_user.check_balance
    end
end
