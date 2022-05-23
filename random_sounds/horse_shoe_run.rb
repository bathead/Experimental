##| Horse Shoe walk
live_loop :horse_shoe_walk do
  sleep 0.20
  2.times do
    with_fx :slicer do
      with_fx :reverb do
        with_synth :noise do
          play :c1, release: 0.05, amp: 2
          sleep 0.25
        end
      end
    end
  end
end