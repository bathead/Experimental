use_bpm 125


##| Synth
live_loop :pluck_loop do
  2.times do
    use_synth :pluck
    play 40, release: 0.2
    sleep 0.5
  end
end

live_loop :techno_fx do
  sync :pluck_loop
  with_fx :ixi_techno do
    play 40
    sleep 1
  end
end

##| Drums
live_loop :drum_bass do
  sync :pluck_loop
  3.times do
    sample :bd_tek, cutoff: 50
    sleep 0.5
  end
end


##| Percursion Snap
live_loop :snap do
  sync :drum_bass
  4.times do
    sample :perc_snap, cutoff: 100
    sleep 0.25
  end
end

live_loop :bird_perc do
  sync :snap
  sleep 2
  2.times do
    sample :glitch_perc5, start: 0.2
    sleep 0.5
  end
  
end





