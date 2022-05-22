use_bpm 127



live_loop :drums do
  use_synth :choice
  sample :bd_tek
  sleep 0.50
  sample :drum_tom_hi_soft, cutoff: 100, finish: 0.10
  sleep 0.50
end

live_loop :snares do
  sync :drums
  use_synth :pluck
  sample :sn_zome
  sleep 1
end

live_loop :saw_beat do
  sleep 8
  16.times do
    use_synth :saw
    sample :elec_flip, amp: 2
    sleep 0.25
  end
end

live_loop :dsaw_loop do
  ##| stop
  sync :drums
  2.times do
    use_synth :dsaw
    with_fx :reverb do
      play (chord :c, :minor), pitch: 4, amp: 0.7
      sleep 0.25
      play(chord :c1, :minor), pitch: 4, amp: 0.7
      sleep 0.25
    end
  end
end


live_loop :synth_melody do
  sleep 24
  16.times do
    use_synth :chiplead
    play 40, pitch: 4
    sleep 0.50
    play 41, pitch: 6
    sleep 0.50
    play 42, pitch: 8
    sleep 0.50
  end
  16.times do
    use_synth :chiplead
    play 41, pitch: 4
    sleep 0.50
    play 42, pitch: 6
    sleep 0.50
    play 43, pitch: 8
    sleep 0.50
  end
  16.times do
    use_synth :chiplead
    play 42, pitch: 4
    sleep 0.50
    play 43, pitch: 6
    sleep 0.50
    play 44, pitch: 8
    sleep 0.50
  end
end


