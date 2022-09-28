# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
  major1, minor1 = ver1.split('.').map(&:to_i)
  major2, minor2 = ver2.split('.').map(&:to_i)

  return minor1 <=> minor2 if (major1 <=> major2).zero?

  major1 <=> major2
end
# END
