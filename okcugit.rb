require_relative 'finder'

repo_name = ARGV[0]
finder = OkCuGit::Finder.new(repo_name)
contacts = finder.all_contributors
puts contacts.split("\n").uniq
