require 'html-proofer'

desc "run html-proofer"
task :test do
  sh "bundle exec jekyll build"
  HTMLProofer.check_directory(
    "./_site",
    {
      :check_html => true,
      :check_favicon => true,
      :allow_hash_href => true,
      :external_only => true,
      :only_4xx => true,
      :http_status_ignore => [429],
      :typhoeus => {
        :timeout => 5,
        :verbose => true,
        :followlocation => true,
        :ssl_verifypeer => false,
        :headers => {
          'User-Agent' => 'html-proofer'
        }
      }
    }
  ).run
end