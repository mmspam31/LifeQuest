class UserQuestsController < ApplicationController
  # GET /user_quests
  # GET /user_quests.json
  def index
    @user_quests = UserQuest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_quests }
    end
  end

  # GET /user_quests/1
  # GET /user_quests/1.json
  def show
    @user_quest = UserQuest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_quest }
    end
  end

  # GET /user_quests/new
  # GET /user_quests/new.json
  def new
    @user_quest = UserQuest.new
    @user_quest.user = current_user

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_quest }
    end
  end

  # GET /user_quests/1/edit
  def edit
    @user_quest = UserQuest.find(params[:id])
  end

  # POST /user_quests
  # POST /user_quests.json
  def create
    @user_quest = UserQuest.new(params[:user_quest])

    respond_to do |format|
      if @user_quest.save
        format.html { redirect_to @user_quest, notice: 'User quest was successfully created.' }
        format.json { render json: @user_quest, status: :created, location: @user_quest }
      else
        format.html { render action: "new" }
        format.json { render json: @user_quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_quests/1
  # PUT /user_quests/1.json
  def update
    @user_quest = UserQuest.find(params[:id])

    respond_to do |format|
      if @user_quest.update_attributes(params[:user_quest])
        format.html { redirect_to @user_quest, notice: 'User quest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_quests/1
  # DELETE /user_quests/1.json
  def destroy
    @user_quest = UserQuest.find(params[:id])
    @user_quest.destroy

    respond_to do |format|
      format.html { redirect_to user_quests_url }
      format.json { head :no_content }
    end
  end
end
