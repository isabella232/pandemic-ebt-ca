require 'rails_helper'

RSpec.describe ResidentialAddressController do
  it_behaves_like 'form controller base behavior', Household.create({ is_eligible: :yes })
  it_behaves_like 'form controller always shows'
end
