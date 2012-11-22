class StablesController < ApplicationController
  # GET /stables
  # GET /stables.json
  def index
    @stables = Stable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stables }
    end
  end

  # GET /stables/1
  # GET /stables/1.json
  def show
    @stable = Stable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stable }
    end
  end

  # GET /stables/new
  # GET /stables/new.json
  def new
    @stable = Stable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stable }
    end
  end

  # GET /stables/1/edit
  def edit
    @stable = Stable.find(params[:id])
  end

  # POST /stables
  # POST /stables.json
  def create
    @stable = Stable.new(params[:stable])

    respond_to do |format|
      if @stable.save
        format.html { redirect_to @stable, notice: 'Stable was successfully created.' }
        format.json { render json: @stable, status: :created, location: @stable }
      else
        format.html { render action: "new" }
        format.json { render json: @stable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stables/1
  # PUT /stables/1.json
  def update
    @stable = Stable.find(params[:id])

    respond_to do |format|
      if @stable.update_attributes(params[:stable])
        format.html { redirect_to @stable, notice: 'Stable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stables/1
  # DELETE /stables/1.json
  def destroy
    @stable = Stable.find(params[:id])
    @stable.destroy

    respond_to do |format|
      format.html { redirect_to stables_url }
      format.json { head :no_content }
    end
  end
end
