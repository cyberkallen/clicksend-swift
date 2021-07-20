Pod::Spec.new do |s|
  s.name = 'ClickSendClient'
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '12.0'
  s.version = '5.0.64'
  s.source = { :git => 'git@github.com:cyberkallen/clicksend-swift.git', :tag => 'v5.0.64' }
  s.authors = 'ClickSend Codegen'
  s.license = 'Proprietary'
  s.source_files = 'ClickSendClient/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.9.1'
end
