class CircuitosDatatable
  delegate :params, :h, :link_to,  to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Circuito.count,
      iTotalDisplayRecords: circuitos.total_entries,
      aaData: data
    }
  end

private

  def data
    circuitos.map do |circuito|
      [
        link_to(circuito.designacao, circuito),
        circuito.descricao,
        circuito.servico,
        circuito.status,
        circuito.bandaAtivada,
        circuito.empresa.razao
      ]
    end
  end

  def circuitos
    @circuitos ||= fetch_circuitos
  end

  def fetch_circuitos
    circuitos = Circuito.order("#{sort_column} #{sort_direction}")
    circuitos = circuitos.page(page).per_page(per_page)
    if params[:sSearch].present?
      circuitos = circuitos.where("designacao like :search or descricao like :search", search: "%#{params[:sSearch]}%")
    end
    circuitos
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[designacao descricao servico status bandaAtivada empresa]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end
