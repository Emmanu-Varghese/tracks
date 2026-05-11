TRACKS_VERSION = '2.7.1'

if Dir.exist?(".git")
  TRACKS_REVISION_WITH_DATE =
    `git log --date=format:'%Y-%m-%d' --pretty=format:"%h @ %ad" -1`.strip

  TRACKS_REVISION =
    `git log --pretty=format:"%h" -1`.strip
else
  TRACKS_REVISION_WITH_DATE = "render-deploy"
  TRACKS_REVISION = ENV["RENDER_GIT_COMMIT"] || "unknown"
end
