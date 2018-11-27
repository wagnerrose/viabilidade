namespace :rede do
  desc "Popula Tabela redes"
  task redes: :environment do

redes_list = [
  [ "Germany", 81831000 ],
  [ "France", 65447374 ],
  [ "Belgium", 10839905 ],
  [ "Netherlands", 16680000 ]
]

redes_list.each do |name, population|
  Rede.create( name: name, population: population )
end
