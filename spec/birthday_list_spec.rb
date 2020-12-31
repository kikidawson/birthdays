require 'birthday_list'
require 'timecop'

describe BirthdayList do
  subject { described_class.new }
  let(:kiki_birthday) { Birthday.new('Kiki', '20 June 1992')}
  let(:aaron_birthday) { Birthday.new('Aaron', '28 August 1994')}

  it 'begins with an empty list' do
    expect(subject.saved_birthdays).to eq []
  end

  describe '#add' do
    it 'allows new birthdays to be added into the list' do
      subject.add(kiki_birthday)

      expect(subject.saved_birthdays).to include kiki_birthday
    end

  end

  describe '#all' do
    it 'prints a list of birthdays' do
      subject.add(kiki_birthday)
      subject.add(aaron_birthday)

      expect { subject.all }.to output("Kiki: 20 June 1992\nAaron: 28 August 1994\n").to_stdout
    end
  end

  describe '#check_today' do
    it 'lists todays birthdays' do
      Timecop.freeze(Time.parse('20/06/2020')) do
        subject.add(kiki_birthday)
        subject.add(aaron_birthday)

        expect { subject.check_today }.to output("It's Kiki's birthday. They're 28 today!\n").to_stdout
      end
    end
  end
end
