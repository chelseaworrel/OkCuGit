module OkCuGit
  class Finder
    attr_reader :repo_name

    def initialize(repo_name)
      @repo_name = repo_name
    end

    def all_contributors
      git_clone(repo_name)
      `git log --pretty=format:%an" "%ae`
    end

    def git_clone(repo_name)
      `git clone git@github.com:#{repo_name} contacts`
      Dir.chdir("contacts")
    end
  end
end
