# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'CodemashTestingDemo' do
  use_frameworks!

  def testing_pods
    pod 'Quick', '~> 1.0.0'
    pod 'Nimble', '~> 5.0.0'
  end

  target 'CodemashTestingDemoTests' do
    inherit! :search_paths
    testing_pods
  end

  target 'CodemashTestingDemoUITests' do
    inherit! :search_paths
    testing_pods
  end

end
