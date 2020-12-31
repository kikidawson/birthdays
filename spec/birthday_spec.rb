require 'birthday'

describe Birthday do
  subject { described_class.new('Kiki', '20 June 1992') }

  it 'takes a name' do
    expect(subject.name).to eq 'Kiki'
  end

  it 'reformats date' do
    expect(subject.date).to eq '20/06/1992'
  end

  it 'reformats date to long date' do
    expect(subject.long_date).to eq '20 June 1992'
  end

  it 'calculates age on current years birthday date' do
    Timecop.freeze(Time.parse('20/06/2020')) do
      expect(subject.age).to eq 28
    end
  end
end
