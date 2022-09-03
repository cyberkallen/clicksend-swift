Pod::Spec.new do |s|
  s.name = 'ClickSendClient'
  s.ios.deployment_target = '15.5'
  s.osx.deployment_target = '12.5'
  s.tvos.deployment_target = '15.5'
  s.version = '5.0.64'
  s.source = { :git => 'git@github.com:cyberkallen/clicksend-swift.git', :tag => 'v5.0.64' }
  s.authors = 'ClickSend Codegen'
  s.license = 'Proprietary'
  s.source_files = 'ClickSendClient/Classes/**/*.swift'
  s.summary = 'Test'
  s.homepage = 'Test'
  #s.dependency 'Alamofire', '~> 4.9.1'
end
