
module Metronome
  # Gets/Puts/Posts for jobs
  class Job < Flexirest::Base
    get :all, 'v1/jobs'
    get :find, 'v1/jobs/:id'
    put :save, 'v1/jobs/:id'
    post :create, 'v1/jobs'
    delete :remove, 'v1/jobs/:id'
  end
end
