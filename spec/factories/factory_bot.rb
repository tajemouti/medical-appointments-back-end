FactoryBot.define do
  factory :user do
    username { Faker::Internet.username }
    password { Faker::Internet.password(min_length: 6) }
  end

  factory :user_with_appointments, parent: :user do
    transient do
      appointments_count { 3 }
    end

    after(:create) do |user, evaluator|
      create_list(:appointment, evaluator.appointments_count, user:)
    end
  end
end

FactoryBot.define do
  factory :doctor do
    name { Faker::Name.name }
    picture { Faker::Avatar.image }
    speciality { Faker::Lorem.words(number: 3).join(' ') }
    address { Faker::Address.full_address }
  end

  factory :doctor_with_appointments, parent: :doctor do
    transient do
      appointments_count { 3 }
    end

    after(:create) do |doctor, evaluator|
      create_list(:appointment, evaluator.appointments_count, doctor:)
    end
  end

  factory :appointment do
    appointment_time { Faker::Time.forward(days: 23, period: :evening) }
    city { Faker::Address.city }
    association :user
    association :doctor
  end
end
