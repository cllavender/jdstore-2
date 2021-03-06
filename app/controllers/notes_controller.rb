class NotesController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
    @notephotos = @note.notephotos.all
  end

  def new
    @note = Note.new
    @notephoto = @note.notephotos.build
  end

  def create
    @note = Note.new(note_params)
    @note.user = current_user

    if @note.save
      if params[:notephotos] != nil
        params[:notephotos]['img'].each do |a|
          @notephotos = @note.notephotos.create(:img => a)
        end
      end
      @note.generate_point
      redirect_to notes_path,notice:"游记已发布！"
    else
      render :new
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.experience.destroy
    @note.destroy
    flash[:alert] = "你已成功将 #{@note.foreword} 游记删除！"
    redirect_to notes_path
  end

  private

  def note_params
    params.require(:note).permit(:foreword, :introduction, :destination1, :destination2, :destination3, :title1, :title2, :title3, :description1, :description2, :description3, :description, :end)
  end
end
