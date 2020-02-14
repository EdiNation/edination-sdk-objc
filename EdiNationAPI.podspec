Pod::Spec.new do |s|
  s.name             = "EdiNationAPI"
  s.version          = "2.0.0"
  s.summary          = <<-SUMMARY
  <p>This SDK was automatically generated for EdiNation  by APIMATIC v2.0 ( https://apimatic.io ) on <#=02/13/2020 #></p>

SUMMARY
  s.homepage         = "http://apimatic.io"
  s.license          = 'MIT'
  s.author           = { "APIMATIC" => "support@apimatic.io" }

  s.requires_arc     = true
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.source           = {:git => ''}

  s.source_files     = 'EdiNationAPI/**/*.{h,m}'

  s.dependency       'Unirest-APIMATIC'
  s.dependency       'JSONModel'
  s.dependency       'ISO8601DateFormatter', '~> 0.7'
end
