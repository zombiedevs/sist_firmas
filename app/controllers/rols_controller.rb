class RolsController < ApplicationController
  # GET /rols
  # GET /rols.json
  before_filter :authenticate_user!
  load_and_authorize_resource
  def index
    @rols = Rol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rols }
    end
  end

  # GET /rols/1
  # GET /rols/1.json
  def show
    @rol = Rol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rol }
    end
  end

  # GET /rols/new
  # GET /rols/new.json
  def new
    @rol = Rol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rol }
    end
  end

  # GET /rols/1/edit
  def edit
    @rol = Rol.find(params[:id])
  end

  # POST /rols
  # POST /rols.json
  def create
    @rol = Rol.new(params[:rol])

    respond_to do |format|
      if @rol.save
        format.html { redirect_to @rol, notice: 'Rol was successfully created.' }
        format.json { render json: @rol, status: :created, location: @rol }
      else
        format.html { render action: "new" }
        format.json { render json: @rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rols/1
  # PUT /rols/1.json
  def update
    @rol = Rol.find(params[:id])

    respond_to do |format|
      if @rol.update_attributes(params[:rol])
        format.html { redirect_to @rol, notice: 'Rol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rols/1
  # DELETE /rols/1.json
  def destroy
    @rol = Rol.find(params[:id])
    @rol.destroy

    respond_to do |format|
      format.html { redirect_to rols_url }
      format.json { head :no_content }
    end

    def accessible_roles
    @accessible_roles = Role.accessible_by(current_ability,:read)
  end

  def get_user
    @current_user = current_user
  end
  end
end
