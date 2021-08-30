require 'rails_helper'

RSpec.describe PostsController, type: :controller do

 describe '#show' do

    context 'unsubscribed user' do
      before { get :show, id: lesson.id }

      it 'redirected to the root_path' do
        expect(response).to redirect_to root_path
      end
    end
  end
end
