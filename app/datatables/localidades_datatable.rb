class LocalidadesDatatable
  delegate :params, :h, :link_to, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Localidade.count,
      iTotalDisplayRecords: localidades.total_entries,
      aaData: data
    }
  end

private

  def data
    localidades.map do |localidade|
      [
        link_to(localidade.siglaCNL, localidade),
        localidade.localidade,
        localidade.municipio,
        localidade.siglaMunicipio,
        localidade.uf.sigla,
        localidade.latitude,
        localidade.longitude
      ]
    end
  end

  def localidades
    @localidades ||= fetch_localidades
  end

  def fetch_localidades
    localidades = Localidade.order("#{sort_column} #{sort_direction}")
    localidades = localidades.page(page).per_page(per_page)
    if params[:sSearch].present?
      localidades = localidades.where("siglaCNL like :search or municipio like :search", search: "%#{params[:sSearch]}%")
    end
    localidades
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[siglaCNL codCNL localidade municipio uf_id siglaMunicipio latitude longitude]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end
