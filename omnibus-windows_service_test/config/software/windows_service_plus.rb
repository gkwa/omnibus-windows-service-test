name "windows_service_plus"
default_version "master"

source git: "https://github.com/emerbrito/Windows-Service-Plus.git"

build do
  command "nuget restore src"
  command "msbuild src/WinService.Extension.sln"
  copy "src/WinService.Base/bin/Debug/*", "#{install_dir}/bin"
end
