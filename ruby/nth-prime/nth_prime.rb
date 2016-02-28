class Prime

  @@primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101]
  @@max_checked = @@primes.last + 1

  def self.nth(n)
    raise ArgumentError if n == 0

    compute_primes while @@primes.count < n
    @@primes[n-1]
  end


  def self.compute_primes
    max_cached_prime = @@primes.last

    segment_min = @@max_checked
    segment_max = max_cached_prime * 2
    root = Integer(Math.sqrt(segment_max).floor)

    segment = ((segment_min + 1) .. segment_max).step(2).to_a

    (1..root).each do |sieving|
      prime = @@primes[sieving]
      composite_index = (-(segment_min + 1 + prime) / 2) % prime
      while composite_index < segment.count do
        segment[composite_index] = nil
        composite_index += prime
      end
    end

    @@primes.concat(segment.compact!)
    @@max_checked = segment_max
  end
end
