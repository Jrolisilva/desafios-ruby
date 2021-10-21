require 'spec_helper'

describe Numbers do
  context '#call' do
    it '1: Retorna lista que chega mais rápido a soma maior ou igual a 6' do
      list = ['A:0-1-2']
      target_sum = 6

      expect(Numbers.new.extend_list(list, target_sum)).to eq 'A:0-1-2-0-3'
    end

    it '2: Retorna lista que chega mais rápido a soma maior ou igual a 6' do
      list = ['A:0-1-2', 'B:1-2-1']
      target_sum = 6

      expect(Numbers.new.extend_list(list, target_sum)).to eq 'B:1-2-1-2'
    end

    it '3: Retorna lista que chega mais rápido a soma maior ou igual a 50' do
      list = ['A:5-1-3-1-2',
              'B:8-2-1-3-5',
              'C:1-0-2-4-8',
              'D:2-5-3-2-1',
              'E:5-5-2-1-1']
      target_sum = 50

      expect(Numbers.new.extend_list(list, target_sum)).to eq 'B:8-2-1-3-5-0-0-1-5-4-0-4-2-11-0-4'
    end

    it '4: Retorna lista que chega mais rápido a soma maior ou igual a 300' do
      list = ['A:2-5-2-4-5-6-4-6-3',
              'B:1-0-9-4-6-2-11',
              'C:0-4-11-3-5-1-2-4-1-2',
              'D:2-3-1-4-5-12-7-23-3',
              'E:10-2-13-5-1-6-1-3-4',
              'F:3-1-0-14-2-5-1-2']
      target_sum = 300

      expect(Numbers.new.extend_list(list, target_sum)).to eq 'D:2-3-1-4-5-12-7-23-3-7-3-2-11-0-0-1-13-0-3-8-0-3-3-1-8-5-21-0-7-19-0-3-9-0-3-3-1-13-21-12-34-0-8-18'
    end
  end
end
