use_bpm 127

#Drums
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


##| Dsaw Loops
live_loop :dsaw_loop do
  sleep 20
  use_synth :dsaw
  2.times do
    
    with_fx :reverb do
      play (chord :c, :minor), pitch: 4, amp: 0.6
      sleep 0.25
      play(chord :c1, :minor), pitch: 4, amp: 0.6
      sleep 0.25
    end
  end
  
end

live_loop :dsaw_loop_oc1 do
  sync :dsaw_loop
  sleep 2
  use_synth :dsaw
  2.times do
    with_octave 1 do
      with_fx :reverb do
        play (chord :c, :minor), pitch: 4, amp: 0.6
        sleep 0.25
        play(chord :c1, :minor), pitch: 4, amp: 0.6
        sleep 0.25
      end
    end
  end
end

# Pure Synths
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


