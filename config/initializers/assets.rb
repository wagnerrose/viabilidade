# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
# compilando os scripts necessários

Rails.application.config.assets.precompile += %w( localidades.js
                                                  localidades.coffee
                                                  localidades.scss)
Rails.application.config.assets.precompile += %w( analistas.js
                                                  analistas.coffee
                                                  analistas.scss)
Rails.application.config.assets.precompile += %w( empresas.js
                                                  empresas.coffee
                                                  empresas.scss)
Rails.application.config.assets.precompile += %w( equipamentos.js
                                                  equipamentos.coffee
                                                  equipamentos.scss)
Rails.application.config.assets.precompile += %w( estacoes.js
                                                  estacoes.coffee
                                                  estacoes.scss)
Rails.application.config.assets.precompile += %w( justificativas.js
                                                  justificativas.coffee
                                                  justificativas.scss)
Rails.application.config.assets.precompile += %w( regionais.js
                                                  regionais.coffee
                                                  regionais.scss)
Rails.application.config.assets.precompile += %w( respostas.js
                                                  respostas.coffee
                                                  respostas.scss)
Rails.application.config.assets.precompile += %w( servicos.js
                                                  servicos.coffee
                                                  servicos.scss)
Rails.application.config.assets.precompile += %w( solicitacoes.js
                                                  solicitacoes.js.coffee
                                                  solicitacoes.scss)
Rails.application.config.assets.precompile += %w( uf.js
                                                  uf.coffee
                                                  uf.scss)
Rails.application.config.assets.precompile += %w( backoffice.js
                                                  backoffice.coffee
                                                  backoffice.scss)
Rails.application.config.assets.precompile += %w( site/site.js
                                                  site/site.coffee
                                                  site/site.css)
Rails.application.config.assets.precompile += %w( scaffolds.scss)
Rails.application.config.assets.precompile += %w( site/home.scss)


