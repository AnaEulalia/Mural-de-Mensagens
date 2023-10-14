class MensagensController < ApplicationController
  before_action :set_mensagem, only: %i[show edit update destroy]

  # GET /mensagens ou /mensagens.json
  def index
    @mensagens = Mensagem.all
  end

  # GET /mensagens/1 ou /mensagens/1.json
  def show; end

  # GET /mensagens/new
  def new
    @mensagem = Mensagem.new
  end

  # GET /mensagens/1/edit
  def edit; end

  # POST /mensagens ou /mensagens.json
  def create
    @mensagem = Mensagem.new(mensagem_params)

    respond_to do |format|
      if @mensagem.save
        format.html { redirect_to mensagem_url(@mensagem), notice: 'Mensagem cadastrada com sucesso!' }
        format.json { render :show, status: :created, location: @mensagem }
      else
        format.html { redirect_to @mensagem, notice: 'Falha ao cadastrar a mensagem.' }
        format.json { render json: @mensagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mensagens/1 ou /mensagens/1.json
  def update
    respond_to do |format|
      if @mensagem.update(mensagem_params)
        format.html { redirect_to mensagem_url(@mensagem), notice: 'Mensagem atualizada com sucesso!' }
        format.json { render :show, status: :ok, location: @mensagem }
      else
        format.html { redirect_to @mensagem, notice: 'Falha ao atualizar a mensagem.' }
        format.json { render json: @mensagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mensagens/1 ou /mensagens/1.json
  def destroy
    @mensagem.destroy

    respond_to do |format|
      format.html { redirect_to mensagens_url, notice: 'Mensagem apagada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_mensagem
    @mensagem = Mensagem.find(params[:id])
  end

  # Apenas permitir uma lista de parâmetros confiáveis.
  def mensagem_params
    params.require(:mensagem).permit(:titulo, :corpo, :autor, :email)
  end
end
