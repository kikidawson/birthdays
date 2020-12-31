require 'birthday'

describe Birthday do
  it 'takes a name' do
    kiki = Birthday.new('Kiki', '20 June 1992')

    expect(kiki.name).to eq 'Kiki'
  end

  it 'reformats date' do
    kiki = Birthday.new('Kiki', '20 June 1992')

    expect(kiki.date).to eq '20/06/1992'
  end

  it 'formats date use month name' do
    kiki = Birthday.new('Kiki', '20 June 1992')

    expect(kiki.long_date).to eq '20 June 1992'
  end

  it 'calculates age on a persons birthday' do
    Timecop.freeze(Time.parse('20/06/2020')) do
      kiki = Birthday.new('Kiki', '20 June 1992')

      expect(kiki.age).to eq 28
    end
  end
end
