namespace :create_fake_data do
  desc "Create Fake Data"
  task user_post: :environment do
    5.times do
      user = User.create(name: Faker::Name.name, email: Faker::Internet.email)
      5.times do
        user.posts.create(title: Faker::Lorem.sentence(word_count: 3), body: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4))
      end
    end
  end
end

