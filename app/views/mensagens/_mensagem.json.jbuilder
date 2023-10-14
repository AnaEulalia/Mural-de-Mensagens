json.extract! mensagem, :id, :titulo, :corpo, :autor, :email, :created_at, :updated_at
json.url mensagem_url(mensagem, format: :json)
