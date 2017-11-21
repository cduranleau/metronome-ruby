module Metronome
  # Gets/Puts/Posts for jobs
  module Jobs
    # Returns a job with the given id
    #
    def job(id)
      get("jobs/#{id}")
    end

    # Returns all jobs that match the given values with the given values
    #
    # values - Hash of constraints
    #
    def jobs(values = nil)
      get('jobs', values)
    end

    # Create a job from the hash
    def create_job(job)
      post('jobs', job)
    end
  end
end
