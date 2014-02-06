require "spec_helper"

describe Contact do
  context "validates" do
    it "presene of email"
    it "presene of first name"
    it "presene of last name"
    it "uniqueness of email"
  end

  context "#full_name" do
    it "returns first name + last name"
  end
end
