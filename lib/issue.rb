# frozen_string_literal: true

# Issue stores the data for the current issue.
class Issue
  attr_accessor :id

  # Create an issue from the branch name. Uses O(n) time and space.
  def self.from_branch(name)
    parts = name.to_s.split('-')
    parts.each_with_index do |value, index|
      next unless value.to_i.to_s == value

      id = parts[0..index].join('-').upcase
      summary = parts[index + 1..-1].join(' ')
      return new(id: id, summary: summary)
    end
    new
  end

  # Create an issue by making an HTTP request to the issue tracker API.
  def self.from_tracker(issue_id)
    puts 'TODO: Implement Issue.from_tracker'
    id = issue_id.to_s.upcase
    summary = 'Fake long title'
    new(id: id, summary: summary)
  end

  def initialize(args = {})
    @id = args[:id]
    @summary = args[:summary]
  end

  def to_s
    id && title ? "#{id}: #{title}" : title
  end

  def title
    summary.split(' ').map(&:capitalize).join(' ')
  end

  # Get the branch name from ID and title.
  def branch_name
    "#{id}-#{title}".downcase.strip.gsub(/[^a-z0-9\-_]+/i, '-')
  end

  def api_url
    puts 'TODO: Implement issue.api_url'
    "https://api.example.com/issues/#{id}"
  end

  def web_url
    puts 'TODO: Implement issue.web_url'
    "https://example.com/issues/#{id}"
  end

  private

  attr_accessor :summary
end
