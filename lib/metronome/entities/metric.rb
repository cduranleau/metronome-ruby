module Metronome
  # Gets/Puts/Posts for metrics
  class Metric < Flexirest::Base
    get :all, 'v1/metrics'
  end
end
