require "spec_helper"

describe Contact do
  subject { Contact.new }

  context "validates" do
    it "presene of email" do
      expect(subject).to have(1).errors_on(:email)
      subject.email = Faker::Internet.email
      expect(subject).to have(0).errors_on(:email)
    end

    it "presene of first name" do
      expect(subject).to have(1).errors_on(:first_name)
      subject.first_name = Faker::Name.first_name
      expect(subject).to have(0).errors_on(:first_name)
    end

    it "presene of last name" do
      expect(subject).to have(1).errors_on(:last_name)
      subject.last_name = Faker::Name.first_name
      expect(subject).to have(0).errors_on(:last_name)
    end

    it "uniqueness of email"
  end

  context "#full_name" do
    it "returns first name + last name"
  end
end
