namespace "film" do
  task :show_all => :environment do
    Film.all.each {|f| p f.title}
  end
end