class ConcernsController < ApplicationController
  before_action :set_concern, only: [:show, :edit, :update, :destroy]

  # GET /concerns
  # GET /concerns.json
  def index
    @concerns = Concern.all
  end

  # GET /concerns/1
  # GET /concerns/1.json
  def show

  end

  # GET /concerns/new
  def new
    @concern = Concern.new
  end

  # GET /concerns/1/edit
  def edit
  end

  # POST /concerns
  # POST /concerns.json
  def create
    @concern = Concern.new(concern_params)

    respond_to do |format|
      if @concern.save
        format.html { redirect_to @concern, notice: 'Concern was successfully created.' }
        format.json { render :show, status: :created, location: @concern }
      else
        format.html { render :new }
        format.json { render json: @concern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concerns/1
  # PATCH/PUT /concerns/1.json
  def update
    respond_to do |format|
      if @concern.update(concern_params)
        format.html { redirect_to @concern, notice: 'Concern was successfully updated.' }
        format.json { render :show, status: :ok, location: @concern }
      else
        format.html { render :edit }
        format.json { render json: @concern.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /concerns/1
  # DELETE /concerns/1.json
  def destroy
    @concern.destroy
    respond_to do |format|
      format.html { redirect_to concerns_url, notice: 'Concern was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # def upvote
  #   @concern = Concern.find(params[:concern_id])
  #   if @concern.votes.count == 0
  #     @concern.votes.build(upvote: 1, downvote: 0)
  #   else
  #     @votes = @concern.votes.first
  #     @votes.upvote += 1
  #   end
  #   redirect_to(concern_path(@concern))
  # end

  # def downvote
  #   @concern = Concern.find(params[:concern_id])
  #   if @concern.votes.count == 0
  #     @concern.votes.build(downvote: 1, upvote: 0)
  #   else
  #     @votes = @concern.votes.first
  #     @votes.downvote += 1
  #   end
  #   redirect_to(concern_path(@concern))
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concern
      @concern = Concern.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def concern_params
      params.require(:concern).permit(:title, :description, :state_id, :creator_id)
    end
end

 # params.require(:post).permit(:name, :content, :tag_ids => [], tags_attributes: [:name])










