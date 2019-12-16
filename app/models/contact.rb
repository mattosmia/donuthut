class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone
  attribute :subject,   :validate => true
  attribute :message,   :validate => true
  attribute :hoomanchk,  :captcha  => true

  def headers
    {
      :to => "mattosmia@gmail.com",
      :from => %("#{name}" <"#{email}">)
    }
  end
end