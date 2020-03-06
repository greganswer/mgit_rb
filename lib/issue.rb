class Issue
  attr_accessor :id

  def self.from_branch(branch)
    puts "TODO: Implement Issue.from_branch for #{branch} branch"
    id = "JIR-123"
    summary = "Fake long title"
    self.new(id: id, summary: summary)
  end

  def self.from_tracker(issue_id)
    puts "TODO: Implement Issue.from_tracker"
    id = issue_id
    summary = "Fake long title"
    self.new(id: id, summary: summary)
  end

  def initialize(args = {})
    @id = args[:id]
    @summary = args[:summary]
  end

  def to_s
    self.id && self.title ? "#{id}: #{title}" : title
  end

  def title
    puts "TODO: Implement issue.title"
    summary
  end

  def branch_name
    puts "TODO: Implement issue.branch_name"
    "jir-123-fake-branch-name"
  end

  def api_url
    puts "TODO: Implement issue.branch_name"
    "https://api.example.com/issues/#{id}"
  end

  def web_url
    puts "TODO: Implement issue.web_url"
    "https://example.com/issues/#{id}"
  end

  private

  attr_accessor :summary
end