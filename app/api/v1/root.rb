class V1::Root < Grape::API
  version 'v1'
  default_format :json

  add_swagger_documentation(base_path: '/',
                            api_version: version,
                            hide_documentation_path: true)
end
