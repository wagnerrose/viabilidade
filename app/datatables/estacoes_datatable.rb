class EstacoesDatatable
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Estacao.count,
      iTotalDisplayRecords: estacoes.total_entries,
      aaData: data
    }
  end

private

  def data
    estacoes.map do |estacao|
      [
        link_to(estacao.pop, estacao),
        estacao.nome,
        estacao.cidade,
        estacao.tipo,
        estacao.status,
        estacao.cedente,
      ]
    end
  end

  def estacoes
    @estacoes ||= fetch_estacoes
  end

  def fetch_estacoes
    estacoes = Estacao.order("#{sort_column} #{sort_direction}")
    estacoes = estacoes.page(page).per_page(per_page)
    if params[:sSearch].present?
      estacoes = estacoes.where("pop like :search or nome like :search", search: "%#{params[:sSearch]}%")
    end
    estacoes
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[pop cidade tipo status cedente]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end

