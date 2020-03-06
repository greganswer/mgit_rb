# frozen_string_literal: true

# Ref: https://makandracards.com/makandra/44452-running-external-commands-with-open3
require 'open3'

# Git contains functions that execute git commands.
module Git
  def self.branch_exists(_name)
    puts 'TODO: Implement Git.branch_exists'
    true
  end

  def self.create_branch(_base_branch, _new_branch)
    puts 'TODO: Implement Git.create_branch'
  end

  def self.current_branch
    stdout, stderr, status = Open3.capture3('git', 'rev-parse', '--abbrev-ref', 'HEAD')
    [stdout.strip, stderr, status]
  end

  def self.commit_all(_message)
    puts 'TODO: Implement Git.commit_all'
  end

  def self.default_base_branch
    puts 'TODO: Implement Git.default_base_branch'
    # %w(dev develop development master)
    'master'
  end

  def self.init
    puts 'TODO: Implement Git.init'
  end

  def self.initialized?
    File.exist?('.git')
  end

  def self.pull_request(_input)
    puts 'TODO: Implement Git.pull_request'
    # TODO: Validate input
    # input[:issue]
    # input[:base_branch]
  end

  def self.push(_branch = None)
    puts 'TODO: Implement Git.push'
  end

  def self.rebase(_base_branch)
    puts 'TODO: Implement Git.rebase'
  end
end
