##| ARP
live_loop :arp_noise do
  16.times do
    use_synth :pluck
    with_fx :distortion do
      sleep 0.2
      play :C3
      sleep 0.2
      play :D4
      sleep 0.2
    end
  end
  8.times do
    use_synth :pluck
    with_fx :distortion do
      sleep 0.2
      play :C4
      sleep 0.2
      play :D3
      sleep 0.2
    end
  end
end

