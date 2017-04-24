class CommentPolicy < ApplicationPolicy

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
      [:user_id, :title, :content, :post_id, :user_name, {images: []}]
    end

    class Scope < Scope
      def resolve
        scope
      end
    end

end
