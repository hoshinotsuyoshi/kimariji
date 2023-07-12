# frozen_string_literal: true

require_relative 'kimariji/version'

module Kimariji
  # NOTE: 引数argはString
  def self.candidate_下の句s(arg)
    return ['きりたちのほるあきのゆふくれ'] if arg[0] == 'む'
    return [] if arg == ''
    上の句と下の句のペア = [
      ['すみのえの', 'ゆめのかよひちひとめよくらむ'],
      ['ほととぎす', 'たたありあけのつきそのこれる'],
      ['むらさめの', 'きりたちのほるあきのゆふくれ'],

      ['うかりける', 'はけしかれとはいのらぬものを'],
      ['うらみわび', 'こひにくちなむなこそをしけれ'],
      ['つきみれば', 'わかみひとつのあきにはあらねと'],
      ['つくばねの', 'こひそつもりてふちとなりぬる'],
    ]

    answer = []

    上の句と下の句のペア.map do |上の句, 下の句|
      if 上の句.start_with?(arg)
        answer << 下の句
      end
    end

    answer
  end
end
