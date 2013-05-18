namespace :museos do

  desc 'Feed Museum table with json'
  task :seed => :environment do
    json = JSON.parse File.read(ARGV[1])
    json.each do |museo|
      Museum.create({
        lat: museo["coordinates"]["lat"],
        long: museo["coordinates"]["lon"],
        original_id_key: museo["id"].to_i,
        nombre: museo["name"]
      })
    end
  end

end