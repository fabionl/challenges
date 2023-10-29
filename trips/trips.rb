class Trip
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def highest
    sum_trips.max
  end

  def sum_trips
    build.map { |values| values.sum }
  end

  def build
    walk_idx = data.length.times.to_a
      .combination(2)
      .reject { |first, second| (second - first) < 2 }
    combined_walk = {}
    walk_idx.each do |idx1, idx2|
      combined_walk[idx1] ||= []
      combined_walk[idx1] << idx2
    end
    result = {}

    combined_walk.each_pair do |base_idx, opts|
      result[base_idx] ||= []
      opts.each do |idx|
        if combined_walk.key?(idx)
          combined_walk[idx].each do |next_idx|
            result[base_idx] << [idx, next_idx]
          end
        else
          result[base_idx] << [idx]
        end
      end
    end
    r = []
    result.each do |key, values|
      r += values.map{|v| [key] + v }
    end
    r.map do |idx_list|
      idx_list.map { |idx| data[idx] }
    end
  end
end
