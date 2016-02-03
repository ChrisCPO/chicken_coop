if Rails.env.development? || Rails.env.test?
  require "factory_girl"

  namespace :dev do
    desc "Sample data for local development environment"
    task prime: "db:setup" do
      include FactoryGirl::Syntax::Methods

      # create(:user, email: "user@example.com", password: "password")
      coop = create(:coop, name: "Uncle Bucks" )
      chicken_1 = create(:chicken, name: "3 eyed raven", sex: 0)
      rooster_1 = create(:chicken, name: "Tim", sex: 1)
      fox = create(:fox, hunger: true, name: "Max", color: "Grey")
      coop.chickens = [chicken_1, rooster_1]
      coop.fox = fox
      coop.save
    end
  end
end
