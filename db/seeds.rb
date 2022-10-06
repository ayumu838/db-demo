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
      company_id: Company.first.id + Random.rand(RECORD),
      name: Faker::Company.name,
      description: 'dummy' * Random.rand(10)
    )
  end
end

Work.transaction do
  (RECORD * 4).times do
    Work.create(
      shop_id: Shop.first.id + Random.rand(RECORD),
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
      mail: Faker::Internet.email,
      birthday: Faker::Date.between(from: '1960-01-01', to: '2003-12-31')
    )
  end
end

Entry.transaction do
  (RECORD * 5).times do
    Entry.create(
      work_id: Work.first.id + Random.rand(RECORD * 5),
      member_id: Member.first.id + Random.rand(RECORD *  5)
    )
  end
end
