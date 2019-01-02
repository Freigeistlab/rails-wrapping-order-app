class PagesController < ApplicationController
  def home
    @product_groups = ProductGroup.where(active: true).order(:order)
  end
end
