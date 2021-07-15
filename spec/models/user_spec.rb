require 'rails_helper' 

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    context 'ユーザー新規登録できる時' do
      it 'full_name, email, password, passeord_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end
    context 'ユーザー新規登録できない時' do
      it 'full_nameが空だと登録できない' do
      @user.full_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Full name can't be blank")
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'emailは@が含まれている' do
        @user.email = 'aaaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("Email is invalid")
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = '00000'
        @user.password_confirmation = '00000'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
      it 'password:半角英数混合(半角英語のみ)' do
        @user.password = 'aaaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include( "Password confirmation doesn't match Password")
      end
      it 'passwordが数字のみでは登録できないこと' do
        @user.password = '7777777'
        @user.valid?
        expect(@user.errors.full_messages).to include( "Password confirmation doesn't match Password")
      end
      it 'passwordが全角だと登録できない' do
        @user.password = 'かきくけこ'
        @user.valid?
        expect(@user.errors.full_messages).to include( "Password confirmation doesn't match Password")
      end
    end
  end
end