require "spec_helper"

describe Contact do
  subject { Fabricate.build(:contact) }

  context "validates" do
    it "presene of email" do
      expect(subject).to have(0).errors_on(:email)
      subject.email = nil
      expect(subject).to have(1).errors_on(:email)
    end

    it "presene of first name" do
      expect(subject).to have(0).errors_on(:first_name)
      subject.first_name = nil
      expect(subject).to have(1).errors_on(:first_name)
    end

    it "presene of last name" do
      expect(subject).to have(0).errors_on(:last_name)
      subject.last_name = nil
      expect(subject).to have(1).errors_on(:last_name)
    end

    it "uniqueness of email" do
      contact1       = Fabricate(:contact)
      contact1_email = contact1.email
      contact2       = Fabricate.build(:contact, email: contact1_email)
      expect(contact2).to have(1).errors_on(:email)
    end
  end

  context "#full_name" do
    it "returns first name + last name"
  end
end
