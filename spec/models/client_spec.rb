require 'rails_helper'

describe Client do
  context "validation" do
    it "require name" do
      client = Client.create(name: nil)
      expect(client.errors[:name].size).to be>=1
    end

    it "require cpf" do
      client = Client.create(cpf: nil)
      expect(client.errors[:cpf].size).to be>=1
    end

    it "require location" do
      client = Client.create(location: nil)
      expect(client.errors[:location].size).to be>=1
    end

    it "require salary" do
      client = Client.create(salary: nil)
      expect(client.errors[:salary].size).to be>=1
    end

    it "require valid cpf" do
			client = Client.create(cpf: "invalid")
			expect(client.errors[:cpf].size).to be >= 1
		end

    %w[
		abcdfgh
		123456789ab
		ab145879cxv
		@1a254#$%a!
		12345
		invalid
		].each do |cpf|
			it "requires #{cpf} as valid cpf" do
				client = Client.create(cpf: cpf)
				expect(client.errors[:cpf].size).to be >= 1
			end
		end
  end
end
