require "spec_helper"

describe Contact do
  subject { Contact.new }

  context "validates" do
    it "presene of email" do
      expect(subject).to be_invalid
      subject.email = Faker::Internet.email
      expect(subject).to be_valid
    end
    it "presene of first name"
    it "presene of last name"
    it "uniqueness of email"
  end

  context "#full_name" do
    it "returns first name + last name"
  end
end
