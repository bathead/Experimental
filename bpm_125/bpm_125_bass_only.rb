use_bpm 125


######## Saws

live_loop :d_saw_loop do
  32.times do
    use_synth :dsaw
    with_fx :reverb do
      with_fx :distortion do
        play 40, cutoff: 65, pitch: 12
        sleep 0.5
      end
    end
  end
  sleep 0.05
  8.times  do
    use_synth :dsaw
    with_fx :reverb do
      with_fx :distortion do
        play 40, cutoff: 65, pitch: 8
        sleep 0.5
      end
    end
  end
end


######## Percursion Snap DO NOT MOD
live_loop :snap do
  sleep 2
  sync :d_saw_loop
  3.times do
    with_fx :ping_pong do
      sample :perc_snap, cutoff: 100, amp: 0.85
      sleep 0.45
    end
  end
end

live_loop :bird_perc do
  sync :snap
  4.times do
    with_fx :echo do
      sample :glitch_perc5, start: 0.2, sustain: 1, amp: 1.50
      sleep 0.5
    end
  end
end



