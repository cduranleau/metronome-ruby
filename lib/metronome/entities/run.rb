module Metronome
  # Gets/Puts/Posts for runs
  class Run < Flexirest::Base
    get :all, 'v1/jobs/:job_id/runs'
    post :start, 'v1/jobs/:job_id/runs'
    get :find, 'v1/jobs/:job_id/runs/:run_id'
    post :stop, 'v1/jobs/:job_id/runs/:run_id'
  end
end
