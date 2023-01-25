require './lib/caesar_cipher'

describe Caesarcipher do
    describe "#to_new_number" do
        it "Convert letters to numbers" do
            caesarcipher = Caesarcipher.new
            expect(caesarcipher.to_new_number("a", 3)).to eql(100)
        end
    end
    describe "#rebase_number" do
        it "Check the new number and start over the list if the number plus the modifier gets over the last character number" do
            caesarcipher = Caesarcipher.new
            expect(caesarcipher.rebase_number(123)).to eql(97)
        end
    end
    describe "#translate_to_number" do
        it "Takes a string and translate each letter to an equivalent unicode number adding the modifier" do
            caesarcipher = Caesarcipher.new
            expect(caesarcipher.translate_to_number("az",1)).to eql([98, 97])
        end
    end
end