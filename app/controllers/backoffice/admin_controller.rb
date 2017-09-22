module Backoffice
  class AdminController < ApplicationController

#    before_action :authenticate_admin!
    before_action :set_admin, only: [:show, :edit, :update, :destroy]

    layout "backoffice"

    # GET /admins
    # GET /admins.json
    def index
      # @admins = admin.all
      @admins = Admin.order(:nome)
    end

    # GET /admins/1
    # GET /admins/1.json
    def show
    end

    # GET /admins/new
    def new
      @admin = Admin.new
    end

    # GET /admin/1/edit
    def edit
    end

    # POST /admin
    # POST /admin.json
    def create
      @admin = Admin.new(admin_params)

      respond_to do |format|
        if @admin.save
          format.html { redirect_to admin_index_path, notice: I18n.t('messages.created')  }
          format.json { render :show, status: :created, location: @admin }
        else
          format.html { render :new }
          format.json { render json: @admin.errors, status: :unprocessable_entity }
        end
      end
    end

      # PATCH/PUT /admins/1
      # PATCH/PUT /admins/1.json
    def update
      # permite apos editar, salvar sem a necessidade de alterar senha
      passwd = params[:admin][:password]
      passwd_confirmation = params[:admin][:password_confirmation]

      if passwd.blank? && passwd_confirmation.blank?
        params[:admin].delete(:password)
        params[:admin].delete(:password_confirmation)
      end
      ###
      respond_to do |format|
        if @admin.update(admin_params)
          format.html { redirect_to admin_index_path, notice: I18n.t('messages.updated')  }
          format.json { render :show, status: :ok, location: @admin }
        else
          format.html { render :edit }
          format.json { render json: @admin.errors, status: :unprocessable_entity }
        end
      end
    end

  # DELETE /admins/1
  # DELETE /admins/1.json
    def destroy
      @admin.destroy
      respond_to do |format|
        format.html { redirect_to admin_index_path, notice: I18n.t('messages.destroyed')  }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_admin
        @admin = Admin.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def admin_params
        params.require(:admin).permit(:email, :nome, :regra, :password, :password_confirmation)
      end
    end
  end
