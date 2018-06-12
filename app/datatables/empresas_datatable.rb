class EmpresasDatatable
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Empresa.count,
      iTotalDisplayRecords: empresas.total_entries,
      aaData: data
    }
  end

private

  def data
    empresas.map do |empresa|
      [
        link_to(empresa.razao, empresa),
        empresa.nome_fantasia,
        empresa.regional,
        empresa.cnpj,
        empresa.sap,
      ]
    end
  end

  def empresas
    @empresas ||= fetch_empresas
  end

  def fetch_empresas
    empresas = Empresa.order("#{sort_column} #{sort_direction}")
    empresas = empresas.page(page).per_page(per_page)
    if params[:sSearch].present?
      empresas = empresas.where("razao like :search or nome_fantasia like :search", search: "%#{params[:sSearch]}%")
    end
    empresas
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[razao nome_fantasia regional cnpj sap]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end
