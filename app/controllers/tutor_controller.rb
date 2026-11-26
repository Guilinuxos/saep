class TutorController < ApplicationController
  before_action :set_tutor, only: [ :show, :edit, :update, :destroy ]

  def index
    @tutores = Tutor.all
  end

  def show
  end

  def new
    @tutor = Tutor.new()
  end

  def create
    @tutor = Tutor.new(tutor_params)
    if @tutor.save
      redirect_to tutor_index_path, notice: "Tutor cadastrado com sucesso"

    else render :new, status: unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_tutor
    @tutor = Tutor.find(params[:id])
  end

  def tutor_params
    params.require(:tutor).permit(:nome, :cpf)
  end
end
