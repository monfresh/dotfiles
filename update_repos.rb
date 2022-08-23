require 'pathname'
require 'fileutils'
include FileUtils

def colorize(value, color)
  case color
    when :green then "\e[32m" + value.to_s + "\e[0m"
    when :red then "\e[31m" + value.to_s + "\e[0m"
    when :yellow then "\e[33m" + value.to_s + "\e[0m"
    else value.to_s
  end
end

git_errors = [
  "not a git repository",
  "Your index contains uncommitted changes",
  "no such ref was fetched",
  "There is no tracking information",
  "You have unstaged changes",
]

all_projects = "/Users/moncef/projects/*/*/"

filtered_projects = Pathname.glob(all_projects).reject do |path|
  path.to_s.include?("playground")
end

filtered_projects.each do |project|
  chdir File.expand_path(project)
  puts colorize("Pulling latest changes for #{project} ...", :yellow)
  result = `git pull 2>&1`
  if git_errors.any? { |error| result.include?(error) }
    puts colorize(result, :red)
  else
    puts colorize(result, :green)
  end
end
