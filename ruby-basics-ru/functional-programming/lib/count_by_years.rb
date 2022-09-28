# frozen_string_literal: true

# BEGIN
def count_by_years(users)
  users.filter { |user| user[:gender] == 'male' }.each_with_object({}) do |user, acc|
    acc[user[:birthday][0...4]] ||= 0
    acc[user[:birthday][0...4]] += 1
  end
end
# END
