class Order < ActiveRecord::Base
  belongs_to :cart

  def confirmation_email
    Pony.mail(to: self.email, from: 'adaBugFree13@gmail.com', subject: 'Order confirmation', body: 'Thank you for placing your order')
  end 
  
end
