# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def read_seed(name)
  seed_path = File.expand_path("seeds/#{name}.json", __dir__)
  JSON.parse(File.read(seed_path))
end

Report.create(
  repo: "rubygems/rubygems",
  created_at: Time.parse("2017-02-24T11:53:37-08:00"),
  data: read_seed("bundler-2017-02-24")
)

Report.create(
  repo: "bundler/bundler",
  created_at: Time.parse("2017-02-24T11:53:37-08:00"),
  data: read_seed("rubygems-2017-02-24")
)
