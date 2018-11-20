#USAGE: rspec spec/song_spec.rb 
require 'song'
RSpec.describe Song do
        ab = Album.new("Ramones", "Animal Boy", 1986)
        subject { Song.new(ab.artist, "Freak Of Nature", 107, ab.album, ab.year,
        ["Johnny Ramone", "DeeDee Ramone"]) }

        context 'when newly initialized' do
        it 'should be an instance of class Song' do
            expect(subject).to be_an_instance_of(Song)
        end
    end

    describe '#to_s' do 
    context 'when first initialized' do
    it 'should return artist title and duration' do
        expect(subject.to_s).to eq('Ramones: Freak of Nature 107 seconds')
              end
        end
    end
    describe '#get_album' do    
    context 'when called on initialized song instance' do
    it 'should return album and year' do    
        expect(subject.get_album).to eq('Album: Animal Boy, year: 1986')
            end
        end
    end
    describe '#get_written_by' do
    context 'when called on initialized Song instance' do
    it 'should return author or list of authors joined by " and "' do
        expect(subject.get_written_by).to eq("Freak of Nature written by Johnny Ramone
        and DeeDee Ramone")
            end
        end
    end
end