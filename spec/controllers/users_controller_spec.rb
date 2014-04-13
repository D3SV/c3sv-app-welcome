require 'spec_helper'

describe UsersController do
  describe '#create' do
    context 'NewUser#save returns true' do
      before do
        allow_any_instance_of(NewUser).to receive(:save).and_return(true)
      end

      it 'should redirect to new user page' do
        post :create
        expect(response).to redirect_to(new_user_path)
      end
    end

    context 'NewUser#save returns false' do
      before do
        allow_any_instance_of(NewUser).to receive(:save).and_return(false)
      end

      it 'should render new user page' do
        post :create
        expect(response).to_not redirect_to(new_user_path)
        expect(response).to render_template(:new)
      end
    end
  end
end
