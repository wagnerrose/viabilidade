# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
# compilando os scripts necessários

Rails.application.config.assets.precompile += %w( backoffice/tabelas/localidades.js
                                                  backoffice/tabelas/localidades.coffee
                                                  backoffice/tabelas/localidades.scss)
Rails.application.config.assets.precompile += %w( backoffice/tabelas/analistas.js
                                                  backoffice/tabelas/analistas.coffee
                                                  backoffice/tabelas/analistas.scss)
Rails.application.config.assets.precompile += %w( backoffice/tabelas/empresas.js
                                                  backoffice/tabelas/empresas.coffee
                                                  backoffice/tabelas/empresas.scss)
Rails.application.config.assets.precompile += %w( backoffice/tabelas/equipamentos.js
                                                  backoffice/tabelas/equipamentos.coffee
                                                  backoffice/tabelas/equipamentos.scss)
Rails.application.config.assets.precompile += %w( backoffice/tabelas/estacoes.js
                                                  backoffice/tabelas/estacoes.coffee
                                                  backoffice/tabelas/estacoes.scss)
Rails.application.config.assets.precompile += %w( backoffice/tabelas/justificativas.js
                                                  backoffice/tabelas/justificativas.coffee
                                                  backoffice/tabelas/justificativas.scss)
Rails.application.config.assets.precompile += %w( backoffice/tabelas/regionais.js
                                                  backoffice/tabelas/regionais.coffee
                                                  backoffice/tabelas/regionais.scss)
Rails.application.config.assets.precompile += %w( respostas.js
                                                  respostas.coffee
                                                  respostas.scss)
Rails.application.config.assets.precompile += %w( backoffice/tabelas/servicos.js
                                                  backoffice/tabelas/servicos.coffee
                                                  backoffice/tabelas/servicos.scss)
Rails.application.config.assets.precompile += %w( solicitacoes.js
                                                  solicitacoes.js.coffee
                                                  solicitacoes.scss)
Rails.application.config.assets.precompile += %w( backoffice/tabelas/uf.js
                                                  backoffice/tabelas/uf.coffee
                                                  backoffice/tabelas/uf.scss)
Rails.application.config.assets.precompile += %w( backoffice.js
                                                  backoffice.coffee
                                                  backoffice.scss)
Rails.application.config.assets.precompile += %w( site/site.js
                                                  site/site.coffee
                                                  site/site.css)
Rails.application.config.assets.precompile += %w( scaffolds.scss)
Rails.application.config.assets.precompile += %w( site/home.scss)


