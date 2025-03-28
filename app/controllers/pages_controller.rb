class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def submit_contact
    flash[:notice] = "Thanks, we will contact you soon."
    redirect_to contact_path
  end

  def old_page
  end
end
