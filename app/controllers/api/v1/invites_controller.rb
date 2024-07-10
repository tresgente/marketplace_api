# app/controllers/api/v1/invites_controller.rb
module Api
  module V1
    class InvitesController < ApplicationController
      before_action :authenticate_user
      before_action :ensure_seller

      def create
        invite = current_user.invites.build
        if invite.save
          render json: { message: 'Invite created successfully', invite: invite }, status: :created
        else
          render json: { errors: invite.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def ensure_seller
        unless current_user.seller?
          render json: { error: 'Only sellers can create invites' }, status: :forbidden
        end
      end
    end
  end
end