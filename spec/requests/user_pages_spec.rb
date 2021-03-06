require 'spec_helper'

describe "User pages" do

  subject { page }

#   describe 'index' do                   старые тесты без кучи юзеров для пагинации
#    before do
#      sign_in FactoryGirl.create(:user)
#      FactoryGirl.create(:user, name: "Bob", email: "bob@example.com")
#      FactoryGirl.create(:user, name: "Ben", email: "ben@example.com")
#      visit users_path
#    end

    describe 'index' do
      let(:user) { FactoryGirl.create(:user) }
      before(:each) do
        sign_in user
        visit users_path
      end
    

      it { should have_content 'Все пользователи' }


      describe "pagination" do

        before(:all) { 30.times { FactoryGirl.create(:user) } }
        after(:all)  { User.delete_all }

        it { should have_selector('div.pagination') }
      end
    

      it 'should list each user' do
        User.all.each do |user|
          expect(page).to have_selector("li", text: user.name)
        end
      end

      
      describe "deleted links" do

      #  it { should_not have_link('delete') }

        describe 'as sn admin user' do
          let(:admin) { FactoryGirl.create(:admin) }
          before do
            sign_in admin
            visit users_path
          end

          it { should have_link('delete', href: user_path(User.first)) }
          it  "should be able to delete another user" do
            expect do
              click_link('delete', match: :first)
            end.to change(User, :count).by(-1)
          end
        end
      end



    end


  
  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    
  end

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Регистрация') }
  end


  describe "Sign-up page" do

    before { visit signup_path }

    let(:submit) { "Создать аккаунт" }

    describe "with invalid information" do

      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end

      describe "after submission" do
        before {click_button submit }

        it { should have_content('Ошибка') }
      end

    end


    describe "with valid information" do
      before do
        fill_in "Логин",                with: "Lance Vance"
        fill_in "Ваш email",            with: "lance@vance.com"
        fill_in "Пароль",               with: "foobar"
        fill_in "Подтверждение пароля", with: "foobar"
      end

      it "should create a user" do
        expect { click_button "Создать аккаунт" }.to change(User, :count).by(1)
      end

      describe "after saving the user" do
        before { click_button submit }
        let (:user) { User.find_by(email: 'lance@vance.com') }

   #     it { should have_link('Sign out') }
        it { should have_content(user.name) }
        it { should have_content('Welcome') }

   #     describe "followed by sign-out" do
   #       before { click_link "Sign out" }
   #       it { should have_link('Sign in') }
   #     end

      end
    end
  end


  describe "edit" do
    let(:user) { FactoryGirl.create(:user) }
    before do
      sign_in user
      visit edit_user_path(user)
    end      

    describe "page" do
      it { should have_content("Редактирование профиля") }
      it { should have_link('изменить', href: 'http://gravatar.com/emails') }
    end

    describe "with invalid information" do
    before { click_button "Сохранить изменения" }

    it { should have_selector('div.alert.alert-danger') }
    end


    describe "with valid information" do
      let(:new_name)  { "New Name" }
      let(:new_email) { "new@example.com" }
      before do
        fill_in "Логин",             with: new_name
        fill_in "Ваш email",            with: new_email
        fill_in "Пароль",         with: user.password
        fill_in "Подтверждение пароля",     with: user.password
        click_button "Сохранить изменения"
      end

      it { should have_content(new_name) }
      it { should have_selector('div.alert.alert-success') }
      #it { should have_link('Sign out', href: signout_path) }
      specify { expect(user.reload.name).to  eq new_name }
      specify { expect(user.reload.email).to eq new_email }
    end



  end
end