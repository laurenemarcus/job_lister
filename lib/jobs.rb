class Job

  @@all_jobs = []

  define_method(:initialize) do |employer, title, location, description|
    @employer = employer
    @title = title
    @location = location
    @description = description
  end

  define_method(:employer) do
    @employer
  end

  define_method(:title) do
    @title
  end

  define_method(:location) do
    @location
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@all_jobs
  end

  define_method(:save) do
    @@all_jobs.push(self)
  end

  define_singleton_method(:clear) do
    @@all_jobs = []
  end
end
