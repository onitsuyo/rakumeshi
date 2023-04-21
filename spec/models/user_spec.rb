require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context 'ユーザー新規登録できる場合' do
      it '必要な情報を入力すれば登録できる' do
        expect(@user).to be_valid
      end
    end
  end 
end
