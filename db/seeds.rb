RECORD = 100_000

Company.transaction do
  RECORD.times do
    Company.create(
      name: Faker::Company.name,
      address: Faker::Address.state + Faker::Address.city + Faker::Address.street_name + Faker::Address.state_abbr
    )
  end
end

Faker::Config.locale = :en

Shop.transaction do
  RECORD.times do
    Shop.create(
      company_id: Random.rand(RECORD),
      name: Faker::Company.name,
      description: 'dummy' * Random.rand(10)
    )
  end
end

Work.transaction do
  (RECORD * 4).times do
    Work.create(
      shop_id: Random.rand(RECORD),
      name: Faker::Company.name,
      description: 'dummy' * Random.rand(10),
      salary: 1000 + Random.rand(1000)
    )
  end
end

Faker::Config.locale = :ja

Member.transaction do
  (RECORD * 4).times do
    Member.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
    )
  end
end

Entry.transaction do
  (RECORD * 5).times do
    Entry.create(
      work_id: Random.rand(RECORD * 4),
      member_id: Random.rand(RECORD *  4)
    )
  end
end
