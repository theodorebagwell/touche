namespace :show_me_the_way do
  desc "Show me all the way"
  task :all => :environment do
    (1..2).each do |number|
      [*('a'..'z')].permutation(number).each do |perm|
        Sitemap.create!(slug: perm.flatten.join)
      end
    end
  end
end
