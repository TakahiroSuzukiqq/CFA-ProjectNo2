class PostPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def update?
     #require 'pry'; binding.pry
    @record.user == @user
  end

  def permitted_attributes
    [:item_name, :item_description, :supplier_name, :supplier_description, :user_id, {images: []}, :user_name, :title, :content, :comment]
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
