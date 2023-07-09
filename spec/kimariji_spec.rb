# frozen_string_literal: true

RSpec.describe Kimariji do
  describe '空文字' do
    it '引数が空文字のとき 空でない配列を返す' do
      expect(Kimariji.candidate_下の句s('')).not_to be_empty
    end
  end

  describe '1文字目が決まり字(す など)' do
    it '引数が"す"のとき 候補を1つ返す' do
      expect(Kimariji.candidate_下の句s('す')).to eq(['ゆめのかよひちひとめよくらむ'])
    end
  end

  describe '2文字目が決まり字(う,つ など)' do
    it '引数が"う"のとき 候補を2つ返す' do
      expect(Kimariji.candidate_下の句s('う')).to eq([
        'はけしかれとはいのらぬものを',
        'こひにくちなむなこそをしけれ',
      ])
    end

    it '引数が"うか"のとき 候補を1つ返す' do
      expect(Kimariji.candidate_下の句s('うか')).to eq(['はけしかれとはいのらぬものを'])
    end

    it '引数が"うら"のとき 候補を1つ返す' do
      expect(Kimariji.candidate_下の句s('うら')).to eq(['こひにくちなむなこそをしけれ'])
    end
  end
end
