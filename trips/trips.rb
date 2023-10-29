class Trip
  attr_reader :data

  def initialize(data)
    @data = data
    @valid_combinations = nil
    @valid_walks = nil
    @full_walks = nil
    @build = nil
  end

  def highest
    sum_trips.max
  end

  def sum_trips
    build.map { |values| values.sum }
  end

  def build
    return @build unless @build.nil?

    @build = full_walks.map do |idx_list|
      idx_list.map { |idx| data[idx] }
    end
  end

  private

  def full_walks
    return @full_walks unless @full_walks.nil?

    @full_walks = []
    valid_walks.each do |key, values|
      @full_walks += values.map{|v| [key] + v }
    end

    @full_walks
  end

  def valid_walks
    return @valid_walks unless @valid_walks.nil?

    next_walk_hash = {}
    valid_combinations.each do |idx1, idx2|
      next_walk_hash[idx1] ||= []
      next_walk_hash[idx1] << idx2
    end

    @valid_walks = {}
    next_walk_hash.each_pair do |base_idx, opts|
      @valid_walks[base_idx] ||= []
      opts.each do |idx|
        if next_walk_hash.key?(idx)
          next_walk_hash[idx].each do |next_idx|
            @valid_walks[base_idx] << [idx, next_idx]
          end
        else
          @valid_walks[base_idx] << [idx]
        end
      end
    end

    @valid_walks
  end

  def valid_combinations
    @valid_combinations ||= data.length.times.to_a
      .combination(2)
      .reject { |first, second| (second - first) < 2 }
  end
end
