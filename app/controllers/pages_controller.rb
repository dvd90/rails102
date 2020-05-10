class PagesController < ApplicationController

  def about
  end

  def homepage
  end

  def contact
    @members = ['rabea', 'yair', 'joy', 'david', 'dan']

    if params[:member]
      @members = @members.select { |m| m.start_with? params[:member] }
    end
  end
end
