# frozen_string_literal: true

# Ref: https://makandracards.com/makandra/44452-running-external-commands-with-open3
require 'open3'

# Git contains functions that execute git commands.
module Git
  def self.branch_exists(name)
    _, _, status = Open3.capture3('git', 'rev-parse', '--quiet', '--verify', name.to_s)
    status.success?
  end

  # TODO: Handle errors, same as Git.current_branch()
  def self.create_branch(_base_branch, _new_branch)
    puts 'TODO: Implement Git.create_branch'
  end

  def self.current_branch
    stdout, stderr, status = Open3.capture3('git', 'rev-parse', '--abbrev-ref', 'HEAD')
    raise stderr unless status.success?

    stdout.strip
  end

  # TODO: Handle errors, same as Git.current_branch()
  def self.commit_all(_message)
    puts 'TODO: Implement Git.commit_all'
  end

  def self.default_base_branch
    branches = %w[dev develop development master]
    branches.each do |name|
      return name if branch_exists(name)
    end
    raise "Could not find any of the following base branches: #{branches}"
  end

  def self.initialize_repo
    _, stderr, status = Open3.capture3('git', 'init')
    raise stderr unless status.success?
  end

  def self.initialized?
    File.exist?('.git')
  end

  # TODO: Handle errors, same as Git.current_branch()
  def self.pull_request(_input)
    puts 'TODO: Implement Git.pull_request'
    # TODO: Validate input
    # input[:issue].to_s
    # input[:base_branch].to_s
  end

  # TODO: Handle errors, same as Git.current_branch()
  def self.push(_branch)
    puts 'TODO: Implement Git.push'
  end

  # TODO: Handle errors, same as Git.current_branch()
  def self.rebase(_base_branch)
    puts 'TODO: Implement Git.rebase'
  end
end
