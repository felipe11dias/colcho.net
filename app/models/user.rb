class User < ActiveRecord::Base
  EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

  validates_presence_of :email, :full_name, :location, :password
  validates_format_of :email, with: EMAIL_REGEXP
  validates_length_of :bio, minimum: 30, allow_blank: false


  #validates_uniqueness_of :email
  #validates_confirmation_of :passoword

  has_secure_password


   # Verificação de senha manualmente, vamos substituir usando o has_secure_password
   # validate :email_format
   # Resultado seria o mesmo caso utilizado dessa forma, o validate aceita
   # um simbolo com o nome do metodo a ser chamado ou um bloco.
   # validate  do
   #   errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
   # end

   #Validação poderia ser feita da seguinte forma:
   #validates_format_of :email, with: EMAIL_REGEXP
   # def email_format
   #   errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
   # end


end
