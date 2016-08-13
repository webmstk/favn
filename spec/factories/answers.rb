FactoryGirl.define do
  factory :answer do
    body "MyText"
    user_id 1
    question_id 1
  end

  factory :invalid_answer, class: "answer" do
    title nil
    body nil
  end
end
