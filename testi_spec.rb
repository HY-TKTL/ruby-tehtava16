RSpec.describe 'moduuli Siirrettava' do
  it "on määritelty oikeassa tiedostossa" do
    expect(File.exists? './siirrettava.rb' ).to be true
    require './siirrettava.rb'
    expect(Siirrettava.class).to eq Module
  end

  it "määrittelee metodin siirraPisteeseen" do
    require './siirrettava.rb'
    class Testiluokka
        def initialize
            @x = 0
            @y = 0
        end
        include Siirrettava
        def to_s
            "#{@x},#{@y}"
        end
    end

    t = Testiluokka.new
    t.siirraPisteeseen(1, 1)
    expect(t.to_s).to eq "1,1"
    t.siirraPisteeseen(3, 5)
    expect(t.to_s).to eq "3,5"
  end

  it "määrittelee metodin siirraSuuntaan" do
    require './siirrettava.rb'
    class Testiluokka
        def initialize
            @x = 0
            @y = 0
        end
        include Siirrettava
        def to_s
            "#{@x},#{@y}"
        end
    end

    t = Testiluokka.new
    t.siirraSuuntaan(1, 1)
    expect(t.to_s).to eq "1,1"
    t.siirraSuuntaan(3, 5)
    expect(t.to_s).to eq "4,6"
    t.siirraSuuntaan(-1, 0)
    expect(t.to_s).to eq "3,6"
  end
end
