require "open3" 
# Ref: https://makandracards.com/makandra/44452-running-external-commands-with-open3

module Git
  def self.branch_exists(name)
    puts "TODO: Implement Git.branch_exists"
    true
  end

  def self.create_branch(base_branch, new_branch)
    puts "TODO: Implement Git.create_branch"
  end

  def self.current_branch
    Open3.capture3("git", "rev-parse", "--abbrev-ref", "HEAD")
  end

  def self.commit_all(message)
    puts "TODO: Implement Git.commit_all"
  end

  def self.default_base_branch
    puts "TODO: Implement Git.default_base_branch"
    # %w(dev develop development master)
    "master"
  end

  def self.init
    puts "TODO: Implement Git.init"
  end

  def self.pull_request(base_branch, body)
    puts "TODO: Implement Git.pull_request"
  end

  def self.push(branch=None)
    puts "TODO: Implement Git.push"
  end

  def self.rebase(base_branch)
    puts "TODO: Implement Git.rebase"
  end
end