# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
# compilando os scripts necessários

Rails.application.config.assets.precompile += %w( backoffice/localidades.js
                                                  backoffice/localidades.coffee
                                                  backoffice/localidades.scss)
Rails.application.config.assets.precompile += %w( backoffice/analistas.js
                                                  backoffice/analistas.coffee
                                                  backoffice/analistas.scss)
Rails.application.config.assets.precompile += %w( backoffice/empresas.js
                                                  backoffice/empresas.coffee
                                                  backoffice/empresas.scss)
Rails.application.config.assets.precompile += %w( backoffice/equipamentos.js
                                                  backoffice/equipamentos.coffee
                                                  backoffice/equipamentos.scss)
Rails.application.config.assets.precompile += %w( backoffice/estacoes.js
                                                  backoffice/estacoes.coffee
                                                  backoffice/estacoes.scss)
Rails.application.config.assets.precompile += %w( backoffice/justificativas.js
                                                  backoffice/justificativas.coffee
                                                  backoffice/justificativas.scss)
Rails.application.config.assets.precompile += %w( backoffice/regionais.js
                                                  backoffice/regionais.coffee
                                                  backoffice/regionais.scss)
Rails.application.config.assets.precompile += %w( respostas.js
                                                  respostas.coffee
                                                  respostas.scss)
Rails.application.config.assets.precompile += %w( backoffice/servicos.js
                                                  backoffice/servicos.coffee
                                                  backoffice/servicos.scss)
Rails.application.config.assets.precompile += %w( solicitacoes.js
                                                  solicitacoes.js.coffee
                                                  solicitacoes.scss)
Rails.application.config.assets.precompile += %w( backoffice/uf.js
                                                  backoffice/uf.coffee
                                                  backoffice/uf.scss)
Rails.application.config.assets.precompile += %w( backoffice/contatos.coffee
                                                  backoffice/contatos.scss)
Rails.application.config.assets.precompile += %w( backoffice/circuitos.coffee
                                                  backoffice/circuitos.scss)
Rails.application.config.assets.precompile += %w( backoffice/admin.coffee
                                                  backoffice/admin.scss)
Rails.application.config.assets.precompile += %w( backoffice.js
                                                  backoffice.coffee
                                                  backoffice.scss)
Rails.application.config.assets.precompile += %w( site/site.js
                                                  site/site.coffee
                                                  site/site.scss)
Rails.application.config.assets.precompile += %w( site/home.scss)
Rails.application.config.assets.precompile += %w( rails_admin/custom/ui.js)
# configuracao para utilizar ger pacotes Yarn
Rails.application.config.assets.paths << Rails.root.join('node_modules')
