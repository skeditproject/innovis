class BlogsController < ApplicationController
  def index
    @blog_posts = BlogPost.all.limit(8)
  end

  def show
    @blog_post = BlogPost.find_by(slug: params[:slug])
  end

  def contact
    @contact = Contact.new
  end

  def send_message
    # binding.break
    @contact = Contact.new(contact_params)

    if @contact.save 
      ContactMailer.send_contact_form(@contact).deliver_now
      redirect_to blogs_path
    else
      flash[:alert] = "Please fill in all required fields."
      render :contact
    end
  end

  private

  def contact_params
    params.permit(:name, :email, :message, attachments: [])
  end
end
