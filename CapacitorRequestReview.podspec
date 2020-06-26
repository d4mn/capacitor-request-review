
  Pod::Spec.new do |s|
    s.name = 'CapacitorRequestReview'
    s.version = '0.0.1'
    s.summary = 'Simple plugin to request review for IOS on some actions'
    s.license = 'MIT'
    s.homepage = 'https://github.com/d4mn/capacitor-request-review'
    s.author = 'd4mn'
    s.source = { :git => 'https://github.com/d4mn/capacitor-request-review', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end