module Metronome
  # Gets/Puts/Posts for schedules
  class Schedule < Flexirest::Base
    get :all, 'v1/jobs/:job_id/schedules'
    post :start, 'v1/jobs/:job_id/schedules'

    get :find, 'v1/jobs/:job_id/schedules/:schedule_id'
    put :save, 'v1/jobs/:job_id/schedules/:schedule_id'
    delete :remove, 'v1/jobs/:job_id/schedules/:schedule_id'
  end
end
